.class public Ljp/sblo/pandora/aGrep/TextViewer;
.super Landroid/app/Activity;
.source "TextViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;
    }
.end annotation


# static fields
.field public static final EXTRA_LINE:Ljava/lang/String; = "line"

.field public static final EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_QUERY:Ljava/lang/String; = "query"


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLine:I

.field private mPath:Ljava/lang/String;

.field private mPatternText:Ljava/lang/String;

.field private mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

.field private mTask:Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

.field private mTextPreview:Ljp/sblo/pandora/aGrep/TextPreview;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/TextViewer;---><init>()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ljp/sblo/pandora/aGrep/TextViewer;->mData:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method static synthetic access$000(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/Prefs;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/TextViewer;

    .prologue
    .line 34
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/TextViewer;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    return-object v0
.end method

.method static synthetic access$100(Ljp/sblo/pandora/aGrep/TextViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/TextViewer;

    .prologue
    .line 34
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/TextViewer;->mPatternText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/TextPreview;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/TextViewer;

    .prologue
    .line 34
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/TextViewer;->mTextPreview:Ljp/sblo/pandora/aGrep/TextPreview;

    return-object v0
.end method

.method static synthetic access$202(Ljp/sblo/pandora/aGrep/TextViewer;Ljp/sblo/pandora/aGrep/TextPreview;)Ljp/sblo/pandora/aGrep/TextPreview;
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/TextViewer;
    .param p1, "x1"    # Ljp/sblo/pandora/aGrep/TextPreview;

    .prologue
    .line 34
    iput-object p1, p0, Ljp/sblo/pandora/aGrep/TextViewer;->mTextPreview:Ljp/sblo/pandora/aGrep/TextPreview;

    return-object p1
.end method

.method static synthetic access$300(Ljp/sblo/pandora/aGrep/TextViewer;)I
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/TextViewer;

    .prologue
    .line 34
    iget v0, p0, Ljp/sblo/pandora/aGrep/TextViewer;->mLine:I

    return v0
.end method

.method static synthetic access$402(Ljp/sblo/pandora/aGrep/TextViewer;Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;)Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/TextViewer;
    .param p1, "x1"    # Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

    .prologue
    .line 34
    iput-object p1, p0, Ljp/sblo/pandora/aGrep/TextViewer;->mTask:Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 50
    invoke-super {v7, v8}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/TextViewer;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v3, 0x7f030008

    invoke-virtual {v7, v3}, Ljp/sblo/pandora/aGrep/TextViewer;->setContentView(I)V

    .line 52
    invoke-virtual {v7}, Ljp/sblo/pandora/aGrep/TextViewer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {v7}, Ljp/sblo/pandora/aGrep/TextViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Prefs;->loadPrefes(Landroid/content/Context;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iput-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    .line 57
    const v3, 0x7f090014

    invoke-virtual {v7, v3}, Ljp/sblo/pandora/aGrep/TextViewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Ljp/sblo/pandora/aGrep/TextPreview;

    iput-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mTextPreview:Ljp/sblo/pandora/aGrep/TextPreview;

    .line 59
    iget-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mTextPreview:Ljp/sblo/pandora/aGrep/TextPreview;

    invoke-virtual {v3, v7}, Ljp/sblo/pandora/aGrep/TextPreview;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    iget-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mTextPreview:Ljp/sblo/pandora/aGrep/TextPreview;

    invoke-virtual {v3, v7}, Ljp/sblo/pandora/aGrep/TextPreview;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {v7}, Ljp/sblo/pandora/aGrep/TextViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, "it":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 66
    .local v1, "extra":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 67
    const-string v3, "path"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    .line 68
    const-string v3, "query"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPatternText:Ljava/lang/String;

    .line 69
    const-string v3, "line"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mLine:I

    .line 71
    iget-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mRegularExrpression:Z

    if-nez v3, :cond_0

    .line 72
    iget-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPatternText:Ljava/lang/String;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Search;->escapeMetaChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPatternText:Ljava/lang/String;

    .line 75
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - aGrep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljp/sblo/pandora/aGrep/TextViewer;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v3, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

    invoke-direct {v3, v7}, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;-><init>(Ljp/sblo/pandora/aGrep/TextViewer;)V

    iput-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mTask:Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

    .line 77
    iget-object v3, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mTask:Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v7, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    .end local v1    # "extra":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/TextViewer;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/TextViewer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 183
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (5)#
    .registers 14

    move-object/16 v5, p0
    move-object/16 v6, p1
    move-object/16 v7, p2
    move/16 v8, p3
    move-wide/16 v9, p4

    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Ljp/sblo/pandora/aGrep/TextViewer;--->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .local v6, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v3, "clipboard"

    invoke-virtual {v5, v3}, Ljp/sblo/pandora/aGrep/TextViewer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .local v1, "cm":Landroid/content/ClipboardManager;
    move-object v2, v7

    .line 228
    check-cast v2, Landroid/widget/TextView;

    .line 229
    .local v2, "tv":Landroid/widget/TextView;
    const-string v3, "aGrep Text Viewer"

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 230
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 232
    const v3, 0x7f060023

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 233
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    # InsDal Modified --> local register: (3)#
    .registers 12

    move-object/16 v3, p0
    move-object/16 v4, p1
    move-object/16 v5, p2
    move/16 v6, p3
    move-wide/16 v7, p4

    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/TextViewer;--->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .local v4, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/TextViewer;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v1, v1, Ljp/sblo/pandora/aGrep/Prefs;->addLineNumber:Z

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?line="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :goto_0
    invoke-virtual {v3, v0}, Ljp/sblo/pandora/aGrep/TextViewer;->startActivity(Landroid/content/Intent;)V

    .line 222
    const/4 v1, 0x1

    return v1

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (6)#
    .registers 12

    move-object/16 v6, p0
    move/16 v7, p1
    move-object/16 v8, p2

    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/TextViewer;--->onMenuItemSelected(ILandroid/view/MenuItem;)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 190
    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 191
    .local v0, "id":I
    const v4, 0x7f090015

    if-ne v0, v4, :cond_1

    .line 193
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v4, v6, Ljp/sblo/pandora/aGrep/TextViewer;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->addLineNumber:Z

    if-eqz v4, :cond_0

    .line 196
    const v4, 0x7f090014

    invoke-virtual {v6, v4}, Ljp/sblo/pandora/aGrep/TextViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ljp/sblo/pandora/aGrep/TextPreview;

    .line 197
    .local v2, "textPreview":Ljp/sblo/pandora/aGrep/TextPreview;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?line="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/TextPreview;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "text/plain"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .end local v2    # "textPreview":Ljp/sblo/pandora/aGrep/TextPreview;
    :goto_0
    invoke-virtual {v6, v1}, Ljp/sblo/pandora/aGrep/TextViewer;->startActivity(Landroid/content/Intent;)V

    .line 207
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return v3

    .line 199
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Ljp/sblo/pandora/aGrep/TextViewer;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "text/plain"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 203
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const v4, 0x102002c

    if-ne v0, v4, :cond_2

    .line 204
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/TextViewer;->finish()V

    goto :goto_1

    .line 207
    :cond_2
    invoke-super {v6, v7, v8}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    goto :goto_1
.end method
