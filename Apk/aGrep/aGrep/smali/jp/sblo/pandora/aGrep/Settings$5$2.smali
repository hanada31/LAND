.class Ljp/sblo/pandora/aGrep/Settings$5$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Settings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/sblo/pandora/aGrep/Settings$5;

.field final synthetic val$edtInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings$5;Landroid/widget/EditText;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$5$2;---><init>(Ljp/sblo/pandora/aGrep/Settings$5;Landroid/widget/EditText;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$5$2;->this$1:Ljp/sblo/pandora/aGrep/Settings$5;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/Settings$5$2;->val$edtInput:Landroid/widget/EditText;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    # InsDal Modified --> local register: (5)#
    .registers 11

    move-object/16 v5, p0
    move-object/16 v6, p1
    move/16 v7, p2

    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Ljp/sblo/pandora/aGrep/Settings$5$2;--->onClick(Landroid/content/DialogInterface;I)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$5$2;->val$edtInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 149
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$5$2;->this$1:Ljp/sblo/pandora/aGrep/Settings$5;

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Settings;->access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 150
    .local v2, "t":Ljp/sblo/pandora/aGrep/CheckedString;
    iget-object v3, v2, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_1
    :goto_0
    return-void

    .line 154
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$5$2;->this$1:Ljp/sblo/pandora/aGrep/Settings$5;

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Settings;->access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    new-instance v4, Ljp/sblo/pandora/aGrep/CheckedString;

    invoke-direct {v4, v0}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$5$2;->this$1:Ljp/sblo/pandora/aGrep/Settings$5;

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Settings;->access$300(Ljp/sblo/pandora/aGrep/Settings;)V

    .line 156
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings$5$2;->this$1:Ljp/sblo/pandora/aGrep/Settings$5;

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Settings;->access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iget-object v4, v5, Ljp/sblo/pandora/aGrep/Settings$5$2;->this$1:Ljp/sblo/pandora/aGrep/Settings$5;

    iget-object v4, v4, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljp/sblo/pandora/aGrep/Prefs;->savePrefs(Landroid/content/Context;)V

    goto :goto_0
.end method
