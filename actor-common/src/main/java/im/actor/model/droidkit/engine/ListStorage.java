package im.actor.model.droidkit.engine;

import java.util.List;

/**
 * Created by ex3ndr on 14.03.15.
 */
public interface ListStorage {

    // Modifications

    public void updateOrAdd(ListEngineRecord valueContainer);

    public void updateOrAdd(List<ListEngineRecord> items);

    public void delete(long key);

    public void delete(long[] keys);

    public void clear();

    // Reading

    public ListEngineRecord loadItem(long key);

    public List<ListEngineRecord> loadBackward(Long sortingKey, int limit);

    public List<ListEngineRecord> loadForward(Long sortingKey, int limit);

    public List<ListEngineRecord> loadBackward(String query, Long sortingKey, int limit);

    public List<ListEngineRecord> loadForward(String query, Long sortingKey, int limit);

    public int getCount();
}