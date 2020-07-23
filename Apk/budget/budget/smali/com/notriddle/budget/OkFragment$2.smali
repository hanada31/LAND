.class final Lcom/notriddle/budget/OkFragment$2;
.super Ljava/lang/Object;
.source "OkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/OkFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/OkFragment;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/OkFragment;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/OkFragment$2;---><init>(Lcom/notriddle/budget/OkFragment;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object v1, v0, Lcom/notriddle/budget/OkFragment$2;->this$0:Lcom/notriddle/budget/OkFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    # InsDal Modified --> local register: (1)#
    .registers 7

    move-object/16 v1, p0
    move-object/16 v2, p1
    move/16 v3, p2


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/OkFragment$2;--->onClick(Landroid/content/DialogInterface;I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, v1, Lcom/notriddle/budget/OkFragment$2;->this$0:Lcom/notriddle/budget/OkFragment;

    invoke-virtual {v0}, Lcom/notriddle/budget/OkFragment;->ok()V

    .line 106
    return-void
.end method
