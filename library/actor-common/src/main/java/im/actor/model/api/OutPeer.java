/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.api;
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

public class OutPeer extends BserObject {

    private PeerType type;
    private int id;
    private long accessHash;

    public OutPeer(PeerType type, int id, long accessHash) {
        this.type = type;
        this.id = id;
        this.accessHash = accessHash;
    }

    public OutPeer() {

    }

    public PeerType getType() {
        return this.type;
    }

    public int getId() {
        return this.id;
    }

    public long getAccessHash() {
        return this.accessHash;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.type = PeerType.parse(values.getInt(1));
        this.id = values.getInt(2);
        this.accessHash = values.getLong(3);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.type == null) {
            throw new IOException();
        }
        writer.writeInt(1, this.type.getValue());
        writer.writeInt(2, this.id);
        writer.writeLong(3, this.accessHash);
    }

    @Override
    public String toString() {
        String res = "struct OutPeer{";
        res += "type=" + this.type;
        res += ", id=" + this.id;
        res += "}";
        return res;
    }

}
