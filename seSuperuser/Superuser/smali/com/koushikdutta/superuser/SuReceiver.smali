.class public Lcom/koushikdutta/superuser/SuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuReceiver.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x11c1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v13, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "command":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 41
    const-string v13, "uid"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 42
    .local v12, "uid":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    .line 44
    const-string v13, "desired_uid"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 45
    .local v6, "desiredUid":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_0

    .line 47
    const-string v13, "action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 50
    const-string v13, "from_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "fromName":Ljava/lang/String;
    const-string v13, "desired_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "desiredName":Ljava/lang/String;
    new-instance v8, Lcom/koushikdutta/superuser/db/LogEntry;

    invoke-direct {v8}, Lcom/koushikdutta/superuser/db/LogEntry;-><init>()V

    .line 54
    .local v8, "le":Lcom/koushikdutta/superuser/db/LogEntry;
    iput v12, v8, Lcom/koushikdutta/superuser/db/LogEntry;->uid:I

    .line 55
    iput-object v4, v8, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    .line 56
    iput-object v2, v8, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;

    .line 57
    iput v6, v8, Lcom/koushikdutta/superuser/db/LogEntry;->desiredUid:I

    .line 58
    iput-object v5, v8, Lcom/koushikdutta/superuser/db/LogEntry;->desiredName:Ljava/lang/String;

    .line 59
    iput-object v7, v8, Lcom/koushikdutta/superuser/db/LogEntry;->username:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v13, v14

    iput v13, v8, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/koushikdutta/superuser/db/LogEntry;->getPackageInfo(Landroid/content/Context;)V

    .line 63
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->addLog(Landroid/content/Context;Lcom/koushikdutta/superuser/db/LogEntry;)Lcom/koushikdutta/superuser/db/UidPolicy;

    move-result-object v11

    .line 66
    .local v11, "u":Lcom/koushikdutta/superuser/db/UidPolicy;
    const-string v13, "allow"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 67
    const v13, 0x7f05004f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/koushikdutta/superuser/db/LogEntry;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "toast":Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_2

    iget-boolean v13, v11, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    if-eqz v13, :cond_0

    .line 76
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/superuser/util/Settings;->getNotificationType(Landroid/content/Context;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    .line 90
    :pswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 70
    .end local v10    # "toast":Ljava/lang/String;
    :cond_3
    const v13, 0x7f05004c

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/koushikdutta/superuser/db/LogEntry;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "toast":Ljava/lang/String;
    goto :goto_1

    .line 78
    :pswitch_1
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v3, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f05004a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f020019

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 86
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 87
    .local v9, "nm":Landroid/app/NotificationManager;
    const/16 v13, 0x11c1

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
