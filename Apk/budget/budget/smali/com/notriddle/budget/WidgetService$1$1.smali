.class final Lcom/notriddle/budget/WidgetService$1$1;
.super Landroid/database/ContentObserver;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/WidgetService$1;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/notriddle/budget/WidgetService$1;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/WidgetService$1;Landroid/os/Handler;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2

    .param p2, "x0"    # Landroid/os/Handler;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/WidgetService$1$1;---><init>(Lcom/notriddle/budget/WidgetService$1;Landroid/os/Handler;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object v1, v0, Lcom/notriddle/budget/WidgetService$1$1;->this$1:Lcom/notriddle/budget/WidgetService$1;

    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move/16 v4, p1


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/WidgetService$1$1;--->onChange(Z)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "Budget"

    const-string v1, "WidgetService.obs.onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, v3, Lcom/notriddle/budget/WidgetService$1$1;->this$1:Lcom/notriddle/budget/WidgetService$1;

    iget-object v0, v0, Lcom/notriddle/budget/WidgetService$1;->this$0:Lcom/notriddle/budget/WidgetService;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, v3, Lcom/notriddle/budget/WidgetService$1$1;->this$1:Lcom/notriddle/budget/WidgetService$1;

    iget v1, v1, Lcom/notriddle/budget/WidgetService$1;->val$widgetId:I

    const v2, 0x7f0a0008

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 64
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move/16 v1, p1
    move-object/16 v2, p2

    .param p1, "selfChange"    # Z

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/WidgetService$1$1;--->onChange(ZLandroid/net/Uri;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0, v1}, Lcom/notriddle/budget/WidgetService$1$1;->onChange(Z)V

    .line 58
    return-void
.end method
