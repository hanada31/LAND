.class final Lcom/notriddle/budget/EnvelopeDetailsActivity$2;
.super Landroid/database/DataSetObserver;
.source "EnvelopeDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/EnvelopeDetailsActivity;->switchEnvelope(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/notriddle/budget/EnvelopeDetailsActivity;I)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopeDetailsActivity$2;---><init>(Lcom/notriddle/budget/EnvelopeDetailsActivity;I)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-object v1, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iput v2, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->val$id:I

    invoke-direct {v0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EnvelopeDetailsActivity$2;--->onChanged()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object v0, v3

    .line 421
    .local v0, "that":Landroid/database/DataSetObserver;
    iget-object v1, v3, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iget-object v1, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogView:Landroid/widget/ListView;

    new-instance v2, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;

    invoke-direct {v2, v3, v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;-><init>(Lcom/notriddle/budget/EnvelopeDetailsActivity$2;Landroid/database/DataSetObserver;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public final onInvalidated()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/EnvelopeDetailsActivity$2;--->onInvalidated()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->onChanged()V

    .line 430
    return-void
.end method
