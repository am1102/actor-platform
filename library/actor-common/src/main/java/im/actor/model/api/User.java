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

public class User extends BserObject {

    private int id;
    private long accessHash;
    private String name;
    private String localName;
    private Sex sex;
    private List<Long> keyHashes;
    private long phone;
    private Avatar avatar;
    private List<Integer> phones;
    private List<Integer> emails;

    public User(int id, long accessHash, String name, String localName, Sex sex, List<Long> keyHashes, long phone, Avatar avatar, List<Integer> phones, List<Integer> emails) {
        this.id = id;
        this.accessHash = accessHash;
        this.name = name;
        this.localName = localName;
        this.sex = sex;
        this.keyHashes = keyHashes;
        this.phone = phone;
        this.avatar = avatar;
        this.phones = phones;
        this.emails = emails;
    }

    public User() {

    }

    public int getId() {
        return this.id;
    }

    public long getAccessHash() {
        return this.accessHash;
    }

    public String getName() {
        return this.name;
    }

    public String getLocalName() {
        return this.localName;
    }

    public Sex getSex() {
        return this.sex;
    }

    public List<Long> getKeyHashes() {
        return this.keyHashes;
    }

    public long getPhone() {
        return this.phone;
    }

    public Avatar getAvatar() {
        return this.avatar;
    }

    public List<Integer> getPhones() {
        return this.phones;
    }

    public List<Integer> getEmails() {
        return this.emails;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.id = values.getInt(1);
        this.accessHash = values.getLong(2);
        this.name = values.getString(3);
        this.localName = values.optString(4);
        int val_sex = values.getInt(5, 0);
        if (val_sex != 0) {
            this.sex = Sex.parse(val_sex);
        }
        this.keyHashes = values.getRepeatedLong(6);
        this.phone = values.getLong(7);
        this.avatar = values.optObj(8, new Avatar());
        this.phones = values.getRepeatedInt(9);
        this.emails = values.getRepeatedInt(10);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.id);
        writer.writeLong(2, this.accessHash);
        if (this.name == null) {
            throw new IOException();
        }
        writer.writeString(3, this.name);
        if (this.localName != null) {
            writer.writeString(4, this.localName);
        }
        if (this.sex != null) {
            writer.writeInt(5, this.sex.getValue());
        }
        writer.writeRepeatedLong(6, this.keyHashes);
        writer.writeLong(7, this.phone);
        if (this.avatar != null) {
            writer.writeObject(8, this.avatar);
        }
        writer.writeRepeatedInt(9, this.phones);
        writer.writeRepeatedInt(10, this.emails);
    }

    @Override
    public String toString() {
        String res = "struct User{";
        res += "id=" + this.id;
        res += ", name=" + this.name;
        res += ", localName=" + this.localName;
        res += ", sex=" + this.sex;
        res += ", keyHashes=" + this.keyHashes.size();
        res += ", avatar=" + (this.avatar != null ? "set":"empty");
        res += ", phones=" + this.phones.size();
        res += ", emails=" + this.emails.size();
        res += "}";
        return res;
    }

}
