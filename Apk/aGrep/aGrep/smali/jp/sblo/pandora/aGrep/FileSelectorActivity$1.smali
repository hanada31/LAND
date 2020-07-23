.class Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;
.super Ljava/lang/Object;
.source "FileSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/FileSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;---><init>(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    # InsDal Modified --> local register: (7)#
    .registers 16

    move-object/16 v7, p0
    move-object/16 v8, p1
    move-object/16 v9, p2
    move/16 v10, p3
    move-wide/16 v11, p4

    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue

    const-string v13, "M_InsDal"
    const-string v14, "Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;--->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z"
    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .local v8, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 63
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-virtual {v1}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "strItem":Ljava/lang/String;
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v1}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 69
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    iget-object v2, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$002(Ljp/sblo/pandora/aGrep/FileSelectorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    :goto_0
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v1}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$100(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V

    .line 84
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_0
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    iget-object v2, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$002(Ljp/sblo/pandora/aGrep/FileSelectorActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    const/4 v2, -0x1

    iget-object v3, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-virtual {v3}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filepath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-static {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 82
    iget-object v1, v7, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-virtual {v1}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->finish()V

    goto :goto_1
.end method
