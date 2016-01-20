package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ApiEncryptedMessage extends ApiMessage {

    private ApiEncryptedBox box;

    public ApiEncryptedMessage(@NotNull ApiEncryptedBox box) {
        this.box = box;
    }

    public ApiEncryptedMessage() {

    }

    public int getHeader() {
        return 8;
    }

    @NotNull
    public ApiEncryptedBox getBox() {
        return this.box;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.box = values.getObj(1, new ApiEncryptedBox());
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.box == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.box);
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct EncryptedMessage{";
        res += "box=" + this.box;
        res += "}";
        return res;
    }

}
