.class Ljp/sblo/pandora/aGrep/OptionActivity$1;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/OptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/OptionActivity;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/OptionActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/OptionActivity$1;---><init>(Ljp/sblo/pandora/aGrep/OptionActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/OptionActivity$1;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/OptionActivity$1;--->onPreferenceClick(Landroid/preference/Preference;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=jp.sblo.pandora.aGrep"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    iget-object v1, v2, Ljp/sblo/pandora/aGrep/OptionActivity$1;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    invoke-virtual {v1, v0}, Ljp/sblo/pandora/aGrep/OptionActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v1, 0x1

    return v1
.end method
