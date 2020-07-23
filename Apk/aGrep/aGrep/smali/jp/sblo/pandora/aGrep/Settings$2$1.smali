.class Ljp/sblo/pandora/aGrep/Settings$2$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Settings$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/sblo/pandora/aGrep/Settings$2;

.field final synthetic val$strItem:Ljp/sblo/pandora/aGrep/CheckedString;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings$2;Ljp/sblo/pandora/aGrep/CheckedString;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$2$1;---><init>(Ljp/sblo/pandora/aGrep/Settings$2;Ljp/sblo/pandora/aGrep/CheckedString;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$2$1;->this$1:Ljp/sblo/pandora/aGrep/Settings$2;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/Settings$2$1;->val$strItem:Ljp/sblo/pandora/aGrep/CheckedString;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move/16 v4, p2

    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Settings$2$1;--->onClick(Landroid/content/DialogInterface;I)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Settings$2$1;->this$1:Ljp/sblo/pandora/aGrep/Settings$2;

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Settings;->access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v0

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    iget-object v1, v2, Ljp/sblo/pandora/aGrep/Settings$2$1;->val$strItem:Ljp/sblo/pandora/aGrep/CheckedString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Settings$2$1;->this$1:Ljp/sblo/pandora/aGrep/Settings$2;

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Settings;->access$300(Ljp/sblo/pandora/aGrep/Settings;)V

    .line 94
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Settings$2$1;->this$1:Ljp/sblo/pandora/aGrep/Settings$2;

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Settings;->access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v0

    iget-object v1, v2, Ljp/sblo/pandora/aGrep/Settings$2$1;->this$1:Ljp/sblo/pandora/aGrep/Settings$2;

    iget-object v1, v1, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v1}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/sblo/pandora/aGrep/Prefs;->savePrefs(Landroid/content/Context;)V

    .line 95
    return-void
.end method
