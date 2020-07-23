.class public final Lcom/notriddle/budget/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/Util;--->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/16 v2, 0x800

    new-array v0, v2, [B

    .line 79
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 80
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public static unpackSparseLongArray(Landroid/os/Bundle;)Landroid/util/SparseArray;
    # InsDal Modified --> local register: (6)#
    .registers 10

    move-object/16 v6, p0

    .param p0, "b"    # Landroid/os/Bundle;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/Util;--->unpackSparseLongArray(Landroid/os/Bundle;)Landroid/util/SparseArray;"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .local v0, "a":Landroid/util/SparseArray;
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 65
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
