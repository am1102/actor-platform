/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.network.connection;

public interface ManagedConnectionCreateCallback {
    void onConnectionCreated(ManagedConnection connection);

    void onConnectionCreateError(ManagedConnection connection);
}
