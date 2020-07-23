.class final Lcom/notriddle/budget/PinActivity$1;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/PinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/PinActivity;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/PinActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PinActivity$1;---><init>(Lcom/notriddle/budget/PinActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object v1, v0, Lcom/notriddle/budget/PinActivity$1;->this$0:Lcom/notriddle/budget/PinActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move/16 v3, p2
    move-object/16 v4, p3

    .param p2, "actionId"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/PinActivity$1;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    .line 74
    iget-object v0, v1, Lcom/notriddle/budget/PinActivity$1;->this$0:Lcom/notriddle/budget/PinActivity;

    invoke-static {v0}, Lcom/notriddle/budget/PinActivity;->access$000(Lcom/notriddle/budget/PinActivity;)V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
