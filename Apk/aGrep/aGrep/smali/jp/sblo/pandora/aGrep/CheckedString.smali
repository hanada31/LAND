.class public Ljp/sblo/pandora/aGrep/CheckedString;
.super Ljava/lang/Object;
.source "CheckedString.java"


# instance fields
.field checked:Z

.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "_s"    # Ljava/lang/String;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/CheckedString;---><init>(Ljava/lang/String;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x1

    invoke-direct {v1, v0, v2}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(ZLjava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move/16 v1, p1
    move-object/16 v2, p2

    .param p1, "_c"    # Z
    .param p2, "_s"    # Ljava/lang/String;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/CheckedString;---><init>(ZLjava/lang/String;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, v0, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    .line 12
    iput-object v2, v0, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/CheckedString;--->toString()Ljava/lang/String;"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, v2, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
