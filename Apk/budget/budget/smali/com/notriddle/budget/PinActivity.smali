.class public Lcom/notriddle/budget/PinActivity;
.super Landroid/app/Activity;
.source "PinActivity.java"


# instance fields
.field private mNextActivity:Landroid/app/PendingIntent;

.field private mPin:Landroid/widget/EditText;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/PinActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/notriddle/budget/PinActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/notriddle/budget/PinActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/notriddle/budget/PinActivity;->check()V

    return-void
.end method

.method private check()V
    # InsDal Modified --> local register: (5)#
    .registers 9

    move-object/16 v5, p0


    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/PinActivity;--->check()V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 98
    iget-object v0, v5, Lcom/notriddle/budget/PinActivity;->mPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/notriddle/budget/PinActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "com.notriddle.budget.pin"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {v5}, Lcom/notriddle/budget/PinActivity;->notify(Landroid/app/Activity;)V

    iget-object v0, v5, Lcom/notriddle/budget/PinActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.notriddle.budget.unlocked"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {v5}, Lcom/notriddle/budget/PinActivity;->finishSuccessful()V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {v5}, Lcom/notriddle/budget/PinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07002e

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static ensureUnlocked(Landroid/app/Activity;)Z
    # InsDal Modified --> local register: (8)#
    .registers 12

    move-object/16 v8, p0

    .param p0, "a"    # Landroid/app/Activity;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/PinActivity;--->ensureUnlocked(Landroid/app/Activity;)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 181
    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 185
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "com.notriddle.budget.pin"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.notriddle.budget.unlocked"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 189
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_2

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/notriddle/budget/PinActivity;

    invoke-direct {v1, v8, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v2, "j":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x8000000

    invoke-static {v6, v5, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 196
    .local v3, "pJ":Landroid/app/PendingIntent;
    const-string v5, "Budget"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pJ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v5, "com.notriddle.budget.NEXT_ACTIVITY"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "j":Landroid/content/Intent;
    .end local v3    # "pJ":Landroid/app/PendingIntent;
    :goto_1
    return v0

    .end local v0    # "done":Z
    :cond_1
    move v0, v5

    .line 185
    goto :goto_0

    .line 201
    .restart local v0    # "done":Z
    :cond_2
    invoke-static {v8}, Lcom/notriddle/budget/PinActivity;->notify(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private finishSuccessful()V
    # InsDal Modified --> local register: (7)#
    .registers 11

    move-object/16 v7, p0


    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/PinActivity;--->finishSuccessful()V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    iget-object v3, v7, Lcom/notriddle/budget/PinActivity;->mNextActivity:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, v7, Lcom/notriddle/budget/PinActivity;->mNextActivity:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v4, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-virtual {v7}, Lcom/notriddle/budget/PinActivity;->finish()V

    .line 138
    return-void

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Lcom/notriddle/budget/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v7}, Lcom/notriddle/budget/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v7}, Lcom/notriddle/budget/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/4 v3, -0x1

    invoke-virtual {v7, v3, v1}, Lcom/notriddle/budget/PinActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 125
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Lcom/notriddle/budget/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v7}, Lcom/notriddle/budget/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Lcom/notriddle/budget/PinActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Lcom/notriddle/budget/PinActivity;->setResult(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static notify(Landroid/app/Activity;)V
    # InsDal Modified --> local register: (8)#
    .registers 12

    move-object/16 v8, p0

    .param p0, "cntx"    # Landroid/app/Activity;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/PinActivity;--->notify(Landroid/app/Activity;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f070033

    const/4 v6, 0x0

    .line 159
    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 162
    const-string v4, "com.notriddle.budget.pin"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "nB":Landroid/app/Notification$Builder;
    const v3, 0x7f020010

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 167
    const/high16 v3, 0x7f070000

    invoke-virtual {v8, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 168
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/notriddle/budget/PinActivity;

    invoke-direct {v0, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "com.notriddle.budget.LOCK"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-static {v8, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 172
    .local v2, "pI":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 175
    const-string v3, "notification"

    invoke-virtual {v8, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 177
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-super {v6, v7}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/PinActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v6}, Lcom/notriddle/budget/PinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v6, Lcom/notriddle/budget/PinActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 52
    invoke-virtual {v6}, Lcom/notriddle/budget/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "com.notriddle.budget.LOCK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    move-object v0, v6

    const-string v2, "notification"

    invoke-virtual {v6, v2}, Lcom/notriddle/budget/PinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, v0, Lcom/notriddle/budget/PinActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.notriddle.budget.unlocked"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/notriddle/budget/PinActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v2, v6, Lcom/notriddle/budget/PinActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "com.notriddle.budget.pin"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v6, Lcom/notriddle/budget/PinActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "com.notriddle.budget.unlocked"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    :cond_1
    invoke-direct {v6}, Lcom/notriddle/budget/PinActivity;->finishSuccessful()V

    goto :goto_0

    .line 60
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 64
    .local v1, "nextActivity":Landroid/os/Parcelable;
    :goto_1
    check-cast v1, Landroid/app/PendingIntent;

    .end local v1    # "nextActivity":Landroid/os/Parcelable;
    iput-object v1, v6, Lcom/notriddle/budget/PinActivity;->mNextActivity:Landroid/app/PendingIntent;

    .line 65
    const-string v2, "Budget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mNextActivity="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/notriddle/budget/PinActivity;->mNextActivity:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const v2, 0x7f030001

    invoke-virtual {v6, v2}, Lcom/notriddle/budget/PinActivity;->setContentView(I)V

    .line 69
    const v2, 0x7f0a0004

    invoke-virtual {v6, v2}, Lcom/notriddle/budget/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v6, Lcom/notriddle/budget/PinActivity;->mPin:Landroid/widget/EditText;

    .line 70
    iget-object v2, v6, Lcom/notriddle/budget/PinActivity;->mPin:Landroid/widget/EditText;

    new-instance v3, Lcom/notriddle/budget/PinActivity$1;

    invoke-direct {v3, v6}, Lcom/notriddle/budget/PinActivity$1;-><init>(Lcom/notriddle/budget/PinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v2, "com.notriddle.budget.NEXT_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/PinActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Lcom/notriddle/budget/PinActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/PinActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {v1, v2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 91
    :pswitch_0
    invoke-direct {v1}, Lcom/notriddle/budget/PinActivity;->check()V

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0026
        :pswitch_0
    .end packed-switch
.end method
