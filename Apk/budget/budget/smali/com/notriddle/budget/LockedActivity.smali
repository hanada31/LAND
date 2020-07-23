.class public abstract Lcom/notriddle/budget/LockedActivity;
.super Landroid/app/Activity;
.source "LockedActivity.java"


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/LockedActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private check()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/LockedActivity;--->check()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v1}, Lcom/notriddle/budget/PinActivity;->ensureUnlocked(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/notriddle/budget/LockedActivity;->finish()V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {v0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/LockedActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {v0}, Lcom/notriddle/budget/LockedActivity;->check()V

    .line 29
    return-void
.end method

.method public onResume()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue
    .line 32
    invoke-super {v0}, Landroid/app/Activity;->onResume()V


    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/LockedActivity;--->onResume()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {v0}, Lcom/notriddle/budget/LockedActivity;->check()V

    .line 34
    return-void
.end method
