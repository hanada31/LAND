.class public Lcom/notriddle/budget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/WidgetProvider;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {v0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    # InsDal Modified --> local register: (12)#
    .registers 19

    move-object/16 v12, p0
    move-object/16 v13, p1
    move-object/16 v14, p2
    move-object/16 v15, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "widgetIds"    # [I

    .prologue

    const-string v16, "M_InsDal"
    const-string v17, "Lcom/notriddle/budget/WidgetProvider;--->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V"
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    const v10, 0x7f0a0008

    .line 36
    array-length v3, v15

    .line 37
    .local v3, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, v3, :cond_0

    .line 38
    aget v6, v15, v2

    .line 39
    .local v6, "widgetId":I
    const-string v7, "Budget"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WidgetProvider.id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030013

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 44
    .local v5, "views":Landroid/widget/RemoteViews;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/notriddle/budget/WidgetService;

    invoke-direct {v4, v13, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v4, "srv":Landroid/content/Intent;
    const-string v7, "appWidgetId"

    aget v8, v15, v2

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {v4, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    aget v7, v15, v2

    invoke-virtual {v5, v7, v10, v4}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 48
    const v7, 0x7f0a001d

    invoke-virtual {v5, v10, v7}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/notriddle/budget/EnvelopeDetailsActivity;

    invoke-direct {v0, v13, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "act":Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    const-string v7, "appWidgetId"

    aget v8, v15, v2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v13, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 55
    .local v1, "actPending":Landroid/app/PendingIntent;
    invoke-virtual {v5, v10, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 56
    aget v7, v15, v2

    invoke-virtual {v14, v7, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "act":Landroid/content/Intent;
    .end local v1    # "actPending":Landroid/app/PendingIntent;
    .end local v4    # "srv":Landroid/content/Intent;
    .end local v5    # "views":Landroid/widget/RemoteViews;
    .end local v6    # "widgetId":I
    :cond_0
    invoke-super {v12, v13, v14, v15}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 59
    return-void
.end method
