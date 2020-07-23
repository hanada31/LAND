.class final Lcom/notriddle/budget/AboutActivity$1;
.super Landroid/os/AsyncTask;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/AboutActivity;

.field final synthetic val$gplView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/AboutActivity;Landroid/widget/TextView;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/AboutActivity$1;---><init>(Lcom/notriddle/budget/AboutActivity;Landroid/widget/TextView;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object v1, v0, Lcom/notriddle/budget/AboutActivity$1;->this$0:Lcom/notriddle/budget/AboutActivity;

    iput-object v2, v0, Lcom/notriddle/budget/AboutActivity$1;->val$gplView:Landroid/widget/TextView;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs doInBackground$68718e9e()Ljava/lang/CharSequence;
    # InsDal Modified --> local register: (5)#
    .registers 9

    move-object/16 v5, p0


    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/AboutActivity$1;--->doInBackground$68718e9e()Ljava/lang/CharSequence;"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v2, v5, Lcom/notriddle/budget/AboutActivity$1;->this$0:Lcom/notriddle/budget/AboutActivity;

    invoke-virtual {v2}, Lcom/notriddle/budget/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "gpl.html"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 56
    .local v1, "gplStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 59
    .local v0, "gplBytes":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v0}, Lcom/notriddle/budget/Util;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 60
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    .end local v0    # "gplBytes":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "gplStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/notriddle/budget/AboutActivity$1;->doInBackground$68718e9e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/notriddle/budget/AboutActivity$1;->val$gplView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
