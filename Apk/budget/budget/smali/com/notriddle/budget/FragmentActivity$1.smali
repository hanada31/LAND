.class final Lcom/notriddle/budget/FragmentActivity$1;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/FragmentActivity;

.field final synthetic val$frag:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/FragmentActivity;Landroid/app/Fragment;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/FragmentActivity$1;---><init>(Lcom/notriddle/budget/FragmentActivity;Landroid/app/Fragment;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v1, v0, Lcom/notriddle/budget/FragmentActivity$1;->this$0:Lcom/notriddle/budget/FragmentActivity;

    iput-object v2, v0, Lcom/notriddle/budget/FragmentActivity$1;->val$frag:Landroid/app/Fragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/FragmentActivity$1;--->run()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, v3, Lcom/notriddle/budget/FragmentActivity$1;->val$frag:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/notriddle/budget/OkFragment;

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, v3, Lcom/notriddle/budget/FragmentActivity$1;->val$frag:Landroid/app/Fragment;

    check-cast v0, Lcom/notriddle/budget/OkFragment;

    .line 52
    .local v0, "tFrag":Lcom/notriddle/budget/OkFragment;
    iget-object v1, v3, Lcom/notriddle/budget/FragmentActivity$1;->this$0:Lcom/notriddle/budget/FragmentActivity;

    invoke-virtual {v0}, Lcom/notriddle/budget/OkFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/notriddle/budget/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    .end local v0    # "tFrag":Lcom/notriddle/budget/OkFragment;
    :cond_0
    return-void
.end method
