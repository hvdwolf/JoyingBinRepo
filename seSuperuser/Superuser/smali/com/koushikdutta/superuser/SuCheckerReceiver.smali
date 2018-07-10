.class public Lcom/koushikdutta/superuser/SuCheckerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuCheckerReceiver.java"


# static fields
.field private static final ACTION_DELETED:Ljava/lang/String; = "internal.superuser.ACTION_CHECK_DELETED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static doNotification(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f05001d

    const/4 v8, 0x0

    .line 17
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 19
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 20
    const v5, 0x7f020019

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 21
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 22
    const v5, 0x7f050049

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 23
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 24
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 25
    .local v3, "launch":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/koushikdutta/superuser/SuCheckerReceiver;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "delIntent":Landroid/content/Intent;
    const-string v5, "internal.superuser.ACTION_CHECK_DELETED"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 28
    .local v2, "delete":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 29
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 30
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 31
    .local v4, "nm":Landroid/app/NotificationManager;
    const/16 v5, 0x2710

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    if-nez p2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "internal.superuser.BOOT_TEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/superuser/util/Settings;->getCheckSuQuietCounter(Landroid/content/Context;)I

    move-result v0

    .line 45
    .local v0, "counter":I
    if-lez v0, :cond_3

    .line 46
    const-string v2, "Superuser"

    const-string v3, "Not bothering user... su counter set."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    invoke-static {p1, v0}, Lcom/koushikdutta/superuser/util/Settings;->setCheckSuQuietCounter(Landroid/content/Context;I)V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 53
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;-><init>(Lcom/koushikdutta/superuser/SuCheckerReceiver;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->start()V

    goto :goto_0

    .line 69
    .end local v0    # "counter":I
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_4
    const-string v2, "internal.superuser.ACTION_CHECK_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "Superuser"

    const-string v3, "Will not bother the user in the future... su counter set."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/koushikdutta/superuser/util/Settings;->setCheckSuQuietCounter(Landroid/content/Context;I)V

    goto :goto_0
.end method
