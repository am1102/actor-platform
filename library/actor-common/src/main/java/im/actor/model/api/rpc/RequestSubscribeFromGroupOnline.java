/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class RequestSubscribeFromGroupOnline extends Request<ResponseVoid> {

    public static final int HEADER = 0x4b;
    public static RequestSubscribeFromGroupOnline fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestSubscribeFromGroupOnline(), data);
    }

    private List<GroupOutPeer> groups;

    public RequestSubscribeFromGroupOnline(List<GroupOutPeer> groups) {
        this.groups = groups;
    }

    public RequestSubscribeFromGroupOnline() {

    }

    public List<GroupOutPeer> getGroups() {
        return this.groups;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        List<GroupOutPeer> _groups = new ArrayList<GroupOutPeer>();
        for (int i = 0; i < values.getRepeatedCount(1); i ++) {
            _groups.add(new GroupOutPeer());
        }
        this.groups = values.getRepeatedObj(1, _groups);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRepeatedObj(1, this.groups);
    }

    @Override
    public String toString() {
        String res = "rpc SubscribeFromGroupOnline{";
        res += "groups=" + this.groups.size();
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
