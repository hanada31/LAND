.class Ljp/sblo/pandora/aGrep/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/Settings$3;---><init>(Ljp/sblo/pandora/aGrep/Settings;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$3;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    # InsDal Modified --> local register: (3)#
    .registers 9

    move-object/16 v3, p0
    move-object/16 v4, p1
    move/16 v5, p2

    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/Settings$3;--->onCheckedChanged(Landroid/widget/CompoundButton;Z)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 108
    .local v0, "strItem":Ljp/sblo/pandora/aGrep/CheckedString;
    iput-boolean v5, v0, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    .line 109
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/Settings$3;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v1}, Ljp/sblo/pandora/aGrep/Settings;->access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v1

    iget-object v2, v3, Ljp/sblo/pandora/aGrep/Settings$3;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/sblo/pandora/aGrep/Prefs;->savePrefs(Landroid/content/Context;)V

    .line 110
    return-void
.end method
