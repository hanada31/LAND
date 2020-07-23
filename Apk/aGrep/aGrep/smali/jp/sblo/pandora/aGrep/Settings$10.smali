.class Ljp/sblo/pandora/aGrep/Settings$10;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$10;---><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$10;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/Settings$10;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "view"    # Landroid/view/View;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/Settings$10;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Settings$10;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Settings$10;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Ljp/sblo/pandora/aGrep/Search;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Settings$10;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/Settings;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
