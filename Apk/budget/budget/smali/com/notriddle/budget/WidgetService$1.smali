.class final Lcom/notriddle/budget/WidgetService$1;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/WidgetService;->onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field csr:Landroid/database/Cursor;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field obs:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/notriddle/budget/WidgetService;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/notriddle/budget/WidgetService;I)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/WidgetService$1;---><init>(Lcom/notriddle/budget/WidgetService;I)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object v1, v0, Lcom/notriddle/budget/WidgetService$1;->this$0:Lcom/notriddle/budget/WidgetService;

    iput v2, v0, Lcom/notriddle/budget/WidgetService$1;->val$widgetId:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/WidgetService$1;--->getCount()I"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, v4, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 85
    .local v0, "count":I
    const-string v1, "Budget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WidgetService.getCount(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v0
.end method

.method public final getItemId(I)J
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pos"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/WidgetService$1;--->getItemId(I)J"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, v2, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 81
    iget-object v0, v2, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/WidgetService$1;--->getLoadingView()Landroid/widget/RemoteViews;"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, v3, Lcom/notriddle/budget/WidgetService$1;->this$0:Lcom/notriddle/budget/WidgetService;

    invoke-virtual {v1}, Lcom/notriddle/budget/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move/16 v8, p1

    .param p1, "pos"    # I

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/WidgetService$1;--->getViewAt(I)Landroid/widget/RemoteViews;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f0a0006

    .line 92
    const-string v3, "Budget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WidgetService.getViewAt("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v7, Lcom/notriddle/budget/WidgetService$1;->this$0:Lcom/notriddle/budget/WidgetService;

    invoke-virtual {v3}, Lcom/notriddle/budget/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030006

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v2, "views":Landroid/widget/RemoteViews;
    iget-object v3, v7, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 97
    iget-object v3, v7, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 98
    const v3, 0x7f0a0007

    iget-object v4, v7, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/notriddle/budget/EditMoney;->toMoney(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "act":Landroid/content/Intent;
    const-string v3, "com.notriddle.budget.envelope"

    invoke-virtual {v7, v8}, Lcom/notriddle/budget/WidgetService$1;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const v3, 0x7f0a0005

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 104
    iget-object v3, v7, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 105
    .local v1, "color":I
    const-string v3, "setBackgroundColor"

    invoke-virtual {v2, v6, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 107
    return-object v2
.end method

.method public final getViewTypeCount()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/WidgetService$1;--->getViewTypeCount()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/WidgetService$1;--->hasStableIds()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/WidgetService$1;--->onCreate()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "Budget"

    const-string v1, "WidgetService.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/notriddle/budget/EnvelopesOpenHelper;

    iget-object v1, v3, Lcom/notriddle/budget/WidgetService$1;->this$0:Lcom/notriddle/budget/WidgetService;

    invoke-direct {v0, v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name, cents, _id, color FROM envelopes ORDER BY name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    .line 51
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    iget-object v1, v3, Lcom/notriddle/budget/WidgetService$1;->this$0:Lcom/notriddle/budget/WidgetService;

    invoke-virtual {v1}, Lcom/notriddle/budget/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 55
    new-instance v0, Lcom/notriddle/budget/WidgetService$1$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v3, v1}, Lcom/notriddle/budget/WidgetService$1$1;-><init>(Lcom/notriddle/budget/WidgetService$1;Landroid/os/Handler;)V

    iput-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->obs:Landroid/database/ContentObserver;

    .line 66
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    iget-object v1, v3, Lcom/notriddle/budget/WidgetService$1;->obs:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    return-void
.end method

.method public final onDataSetChanged()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/WidgetService$1;--->onDataSetChanged()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "Budget"

    const-string v1, "WidgetService.onDataSetChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v2}, Lcom/notriddle/budget/WidgetService$1;->onDestroy()V

    .line 115
    invoke-virtual {v2}, Lcom/notriddle/budget/WidgetService$1;->onCreate()V

    .line 116
    return-void
.end method

.method public final onDestroy()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/WidgetService$1;--->onDestroy()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 69
    const-string v0, "Budget"

    const-string v1, "WidgetService.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    iget-object v1, v3, Lcom/notriddle/budget/WidgetService$1;->obs:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    iput-object v2, v3, Lcom/notriddle/budget/WidgetService$1;->csr:Landroid/database/Cursor;

    .line 73
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 74
    iput-object v2, v3, Lcom/notriddle/budget/WidgetService$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    return-void
.end method
