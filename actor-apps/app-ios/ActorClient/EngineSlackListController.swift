//
//  Copyright (c) 2015 Actor LLC. <https://actor.im>
//

import Foundation
import UIKit;

class EngineSlackListController: SLKTextViewController, UICollectionViewDelegateFlowLayout, AMDisplayList_Listener {

    private var displayList: AMBindedDisplayList!;
    private var emptyLock: Bool = true;
    private var isLoaded: Bool = false;
    
    init(isInverted:Bool) {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
        self.collectionView.delegate = self
        self.inverted = isInverted
//        super.init(tableViewStyle: UITableViewStyle.Plain);
//        self.inverted = isInverted;
        // self.tableView.contentInset = UIEdgeInsetsZero;
    }
    
    required init!(coder decoder: NSCoder!) {
        fatalError("Not implemented");
    }
    
    override func viewDidLoad() {
        if (self.displayList == nil) {
            self.displayList = buildDisplayList()
        }
    }
    
    // List binding lifecycle
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Lock to avoid layouting before animation started
        emptyLock = true
        
        // Schedulling table view init
        dispatch_async(dispatch_get_main_queue(),{
            self.emptyLock = false
            self.collectionView.reloadData()
            
            // Suppose it is not loaded
            self.displayList.addListener(self)
//            if (self.displayList.size() == 0) {
//
//            } else {
//                self.afterLoaded();
////                self.displayList.addAppleListener(self)
//            }
        });
    }
    
    func onCollectionChanged() {
        // After first collection change expecting that list is loaded
        self.collectionView.reloadData()
        if (!isLoaded) {
            isLoaded = true
            self.afterLoaded();
        }
        
        // Replace listeners
//        self.displayList.removeListener(self)
//        self.displayList.addAppleListener(self)
    }
    
    func afterLoaded() {

    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Remove all listeners on exit
        self.displayList.removeListener(self)
    }
    
    // Working with list
    
    func objectAtIndexPath(indexPath: NSIndexPath) -> AnyObject? {
        if (displayList == nil) {
            return nil
        }
        
        return displayList.itemWithIndex(jint(indexPath.row));
    }
    
    func objectAtIndex(index: Int) -> AnyObject? {
        if (displayList == nil) {
            return nil
        }
        
        return displayList.itemWithIndex(jint(index));
    }
    
    func getCount() -> Int {
        if (displayList == nil) {
            return 0
        }
        
        return Int(displayList.size())
    }
    
    // Abstract methods
    
    func buildDisplayList() -> AMBindedDisplayList {
        fatalError("Not implemented");
    }
    
    func buildCell(collectionView: UICollectionView, cellForRowAtIndexPath indexPath: NSIndexPath, item: AnyObject?)  -> UICollectionViewCell {
        fatalError("Not implemented");
    }
    
    func bindCell(collectionView: UICollectionView, cellForRowAtIndexPath indexPath: NSIndexPath, item: AnyObject?, cell: UICollectionViewCell) {
        fatalError("Not implemented");
    }
    
    
    // Collection view methods
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (section != 0 || emptyLock || displayList == nil) {
            return 0
        }
        return Int(displayList.size());
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var item: AnyObject? = objectAtIndexPath(indexPath)
        var cell = buildCell(collectionView, cellForRowAtIndexPath:indexPath, item:item);
        bindCell(collectionView, cellForRowAtIndexPath: indexPath, item: item, cell: cell);
        displayList.touchWithIndex(jint(indexPath.row))
        cell.transform = collectionView.transform
        return cell;
    }
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var item: AnyObject? = objectAtIndexPath(indexPath)
//        var cell = buildCell(tableView, cellForRowAtIndexPath:indexPath, item:item);
//        bindCell(tableView, cellForRowAtIndexPath: indexPath, item: item, cell: cell);
//        displayList.touchWithIndex(jint(indexPath.row))
//        cell.transform = tableView.transform
//        return cell;
//    }
//    
//    func getAddAnimation(item: AnyObject?) -> UITableViewRowAnimation {
//        return UITableViewRowAnimation.Automatic
//    }
    
//    func onCollectionChangedWithChanges(modification: AMAppleListUpdate!) {
//        if (self.emptyLock) {
//            return
//        }
//        
//        var hasUpdates = false
//        var hasChanges = false
//        
//        for i in 0..<modification.size() {
//            var change = modification.changeAt(i)
//            if (UInt(change.getOperationType().ordinal()) == AMChangeDescription_OperationType.UPDATE.rawValue) {
//                hasUpdates = true
//            } else {
//                hasChanges = true
//            }
//            
//            if (hasUpdates && hasChanges) {
//                break
//            }
//        }
//        
//        println("hasChanges: \(hasChanges), hasUpdates: \(hasUpdates)")
//        
//        if (hasChanges) {
//            self.collectionView.performBatchUpdates({ () -> Void in
//                for i in 0..<modification.size() {
//                    var change = modification.changeAt(i)
//                    switch(UInt(change.getOperationType().ordinal())) {
//                    case AMChangeDescription_OperationType.ADD.rawValue:
//                        var startIndex = Int(change.getIndex())
//                        for ind in 0..<change.getLength() {
//                            var rows = [NSIndexPath(forRow: Int(startIndex + ind), inSection: 0)]
//                            var animation = getAddAnimation(change.getItems().getWithInt(ind))
//                            if (animation == UITableViewRowAnimation.None) {
//                                CATransaction.setDisableActions(true)
//                            }
//                            self.tableView.insertRowsAtIndexPaths(rows as [AnyObject], withRowAnimation: animation)
//                            if (animation == UITableViewRowAnimation.None) {
//                                CATransaction.setDisableActions(true)
//                            }
//                        }
//                        break
//                    case AMChangeDescription_OperationType.REMOVE.rawValue:
//                        var startIndex = Int(change.getIndex())
//                        var rows: NSMutableArray = []
//                        for ind in 0..<change.getLength() {
//                            rows.addObject(NSIndexPath(forRow: Int(startIndex + ind), inSection: 0))
//                        }
//                        self.tableView.deleteRowsAtIndexPaths(rows as [AnyObject], withRowAnimation: UITableViewRowAnimation.Automatic)
//                    case AMChangeDescription_OperationType.MOVE.rawValue:
//                        self.tableView.moveRowAtIndexPath(NSIndexPath(forRow: Int(change.getIndex()), inSection: 0), toIndexPath: NSIndexPath(forRow: Int(change.getDestIndex()), inSection: 0))
//                        break
//                    default:
//                        break
//                    }
//                }
//            }, completion: nil)
//        }
//        
//        if (hasUpdates) {
//            var visibleIndexes = self.tableView.indexPathsForVisibleRows() as! [NSIndexPath]
//            for i in 0..<modification.size() {
//                var change = modification.changeAt(i)
//                switch(UInt(change.getOperationType().ordinal())) {
//                case AMChangeDescription_OperationType.UPDATE.rawValue:
//                    var startIndex = Int(change.getIndex())
//                    var rows: NSMutableArray = []
//                    for ind in 0..<change.getLength() {
//                        for visibleIndex in visibleIndexes {
//                            if (visibleIndex.row == Int(startIndex + ind)) {
//                                var item: AnyObject? = objectAtIndexPath(visibleIndex)
//                                var cell = self.tableView.cellForRowAtIndexPath(visibleIndex)
//                                bindCell(self.tableView, cellForRowAtIndexPath: visibleIndex, item: item, cell: cell!)
//                            }
//                        }
//                    }
//                    break
//                default:
//                    break
//                }
//            }
//        }
//    }
    
    
}