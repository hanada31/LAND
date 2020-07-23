.class final Lcom/notriddle/budget/SpendFragment$1;
.super Ljava/lang/Object;
.source "SpendFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/SpendFragment;->onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/SpendFragment;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/SpendFragment;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/SpendFragment$1;---><init>(Lcom/notriddle/budget/SpendFragment;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object v1, v0, Lcom/notriddle/budget/SpendFragment$1;->this$0:Lcom/notriddle/budget/SpendFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    # InsDal Modified --> local register: (12)#
    .registers 17

    move-object/16 v12, p0
    move-object/16 v13, p1

    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue

    const-string v14, "M_InsDal"
    const-string v15, "Lcom/notriddle/budget/SpendFragment$1;--->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;"
    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 111
    iget-object v0, v12, Lcom/notriddle/budget/SpendFragment$1;->this$0:Lcom/notriddle/budget/SpendFragment;

    iget-boolean v0, v0, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    if-eqz v0, :cond_0

    const-string v9, "<"

    .line 112
    .local v9, "s":Ljava/lang/String;
    :goto_0
    iget-object v0, v12, Lcom/notriddle/budget/SpendFragment$1;->this$0:Lcom/notriddle/budget/SpendFragment;

    iget-object v0, v0, Lcom/notriddle/budget/SpendFragment;->mHelper:Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "description"

    aput-object v3, v2, v7

    const-string v3, "cents"

    aput-object v3, v2, v11

    const-string v3, "time"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "envelope = ? AND cents "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 0 AND UPPER(description) LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, v12, Lcom/notriddle/budget/SpendFragment$1;->this$0:Lcom/notriddle/budget/SpendFragment;

    iget v6, v6, Lcom/notriddle/budget/SpendFragment;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const-string v7, "time * -1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 123
    .local v8, "retVal":Landroid/database/Cursor;
    iget-object v0, v12, Lcom/notriddle/budget/SpendFragment$1;->this$0:Lcom/notriddle/budget/SpendFragment;

    invoke-virtual {v0}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-interface {v8, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 125
    return-object v8

    .line 111
    .end local v8    # "retVal":Landroid/database/Cursor;
    .end local v9    # "s":Ljava/lang/String;
    :cond_0
    const-string v9, ">"

    goto :goto_0
.end method
