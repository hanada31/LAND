.class Ljp/sblo/pandora/aGrep/OptionActivity$2;
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
    const-string v3, "Ljp/sblo/pandora/aGrep/OptionActivity$2;---><init>(Ljp/sblo/pandora/aGrep/OptionActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/OptionActivity$2;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/OptionActivity$2;--->onPreferenceClick(Landroid/preference/Preference;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/OptionActivity$2;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Ljp/sblo/pandora/aGrep/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/OptionActivity$2;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    invoke-virtual {v1, v0}, Ljp/sblo/pandora/aGrep/OptionActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v1, 0x1

    return v1
.end method
