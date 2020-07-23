.class Ljp/sblo/pandora/aGrep/Settings$8;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/Settings;

.field final synthetic val$edittext:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$8;---><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$8;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/Settings$8;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    # InsDal Modified --> local register: (5)#
    .registers 12

    move-object/16 v5, p0
    move-object/16 v6, p1
    move/16 v7, p2
    move-object/16 v8, p3

    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/Settings$8;--->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 211
    const/16 v3, 0x42

    if-ne v7, v3, :cond_0

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 212
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$8;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$8;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Ljp/sblo/pandora/aGrep/Search;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, "it":Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$8;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-virtual {v3, v0}, Ljp/sblo/pandora/aGrep/Settings;->startActivity(Landroid/content/Intent;)V

    .line 219
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
