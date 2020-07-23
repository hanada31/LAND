.class final Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;
.super Ljava/lang/Object;
.source "EnvelopeDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/notriddle/budget/EnvelopeDetailsActivity$2;

.field final synthetic val$that:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/EnvelopeDetailsActivity$2;Landroid/database/DataSetObserver;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;---><init>(Lcom/notriddle/budget/EnvelopeDetailsActivity$2;Landroid/database/DataSetObserver;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iput-object v1, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;->this$1:Lcom/notriddle/budget/EnvelopeDetailsActivity$2;

    iput-object v2, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;->val$that:Landroid/database/DataSetObserver;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;--->run()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, v2, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;->this$1:Lcom/notriddle/budget/EnvelopeDetailsActivity$2;

    iget-object v0, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iget-object v0, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    iget-object v1, v2, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;->val$that:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/DeleteAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 424
    iget-object v0, v2, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;->this$1:Lcom/notriddle/budget/EnvelopeDetailsActivity$2;

    iget-object v0, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iget-object v1, v2, Lcom/notriddle/budget/EnvelopeDetailsActivity$2$1;->this$1:Lcom/notriddle/budget/EnvelopeDetailsActivity$2;

    iget v1, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;->val$id:I

    invoke-static {v0, v1}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->access$000(Lcom/notriddle/budget/EnvelopeDetailsActivity;I)V

    .line 425
    return-void
.end method
