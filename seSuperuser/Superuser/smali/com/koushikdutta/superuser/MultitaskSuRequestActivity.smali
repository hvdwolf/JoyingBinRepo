.class public Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;
.super Landroid/app/Activity;
.source "MultitaskSuRequestActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Superuser"

.field private static final SU_PROTOCOL_NAME_MAX:I = 0x14

.field private static final SU_PROTOCOL_PARAM_MAX:I = 0x14

.field private static final SU_PROTOCOL_VALUE_MAX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SU_PROTOCOL_VALUE_MAX_DEFAULT:I = 0x100


# instance fields
.field mAllow:Landroid/widget/Button;

.field mCallerUid:I

.field mDeny:Landroid/widget/Button;

.field mDesiredCmd:Ljava/lang/String;

.field mDesiredUid:I

.field mHandled:Z

.field mHandler:Landroid/os/Handler;

.field mPid:I

.field mRemember:Landroid/widget/RadioGroup;

.field mRequestReady:Z

.field mSocket:Landroid/net/LocalSocket;

.field mSocketPath:Ljava/lang/String;

.field mSpinner:Landroid/widget/Spinner;

.field mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSpinnerIds:[I

.field mTimeLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;-><init>()V

    sput-object v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->SU_PROTOCOL_VALUE_MAX:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    .line 67
    iput v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    .line 393
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f050051
        0x7f050040
        0x7f050041
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getValueMax(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getValueMax(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    sget-object v1, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->SU_PROTOCOL_VALUE_MAX:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 260
    .local v0, "max":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 261
    const/16 v1, 0x100

    .line 262
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method approve()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 403
    return-void
.end method

.method deny()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 409
    return-void
.end method

.method public getGracePeriod()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xa

    return v0
.end method

.method getUntil()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 79
    const/4 v2, -0x1

    .line 80
    .local v2, "until":I
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 82
    .local v1, "pos":I
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerIds:[I

    aget v0, v3, v1

    .line 83
    .local v0, "id":I
    const v3, 0x7f050040

    if-ne v0, v3, :cond_1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int v2, v3, v4

    .line 98
    .end local v0    # "id":I
    .end local v1    # "pos":I
    :cond_0
    :goto_0
    return v2

    .line 86
    .restart local v0    # "id":I
    .restart local v1    # "pos":I
    :cond_1
    const v3, 0x7f050041

    if-ne v0, v3, :cond_0

    .line 87
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .end local v0    # "id":I
    .end local v1    # "pos":I
    :cond_2
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0a002f

    if-ne v3, v4, :cond_3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int v2, v3, v4

    goto :goto_0

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0a0030

    if-ne v3, v4, :cond_0

    .line 95
    const/4 v2, 0x0

    goto :goto_0
.end method

.method handleAction(ZLjava/lang/Integer;)V
    .locals 3
    .param p1, "action"    # Z
    .param p2, "until"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-boolean v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 103
    iput-boolean v2, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v1, "socket:ALLOW"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :goto_2
    if-nez p2, :cond_0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getUntil()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 114
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 115
    new-instance v0, Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/db/UidPolicy;-><init>()V

    .line 116
    .local v0, "policy":Lcom/koushikdutta/superuser/db/UidPolicy;
    if-eqz p1, :cond_4

    const-string v1, "allow"

    :goto_3
    iput-object v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    .line 117
    iget v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    .line 120
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->until:I

    .line 122
    iget v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredUid:I

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    .line 123
    invoke-static {p0, v0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .end local v0    # "policy":Lcom/koushikdutta/superuser/db/UidPolicy;
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    .line 131
    return-void

    .line 102
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    :cond_3
    :try_start_2
    const-string v1, "socket:DENY"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 116
    .restart local v0    # "policy":Lcom/koushikdutta/superuser/db/UidPolicy;
    :cond_4
    :try_start_3
    const-string v1, "deny"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 128
    .end local v0    # "policy":Lcom/koushikdutta/superuser/db/UidPolicy;
    :catch_0
    move-exception v1

    goto :goto_4

    .line 107
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method hideOverlays(Z)V
    .locals 2
    .param p1, "v"    # Z

    .prologue
    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.action.HIDE_OVERLAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "eu.chainfire.supersu.extra.HIDE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    return-void
.end method

.method manageSocket()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;->start()V

    .line 333
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView()V

    .line 391
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    const v1, 0x7f060002

    invoke-static {p0, v1}, Lcom/koushikdutta/superuser/util/Settings;->applyDarkThemeSetting(Landroid/app/Activity;I)V

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    .line 384
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v1, "socket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView()V

    .line 358
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->manageSocket()V

    .line 362
    new-instance v1, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->run()V

    .line 375
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-static {p0}, Lcom/koushikdutta/superuser/util/Settings;->getRequestTimeout(Landroid/content/Context;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    iget-boolean v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->hideOverlays(Z)V

    .line 487
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->hideOverlays(Z)V

    .line 493
    return-void
.end method

.method requestReady()V
    .locals 17

    .prologue
    .line 149
    const v12, 0x7f0a002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v12, 0x7f0a0016

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v12, 0x7f0a0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 153
    .local v6, "packageInfo":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 154
    .local v10, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "pkgs":[Ljava/lang/String;
    const v12, 0x7f0a0033

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 156
    .local v11, "unknown":Landroid/widget/TextView;
    const v12, 0x7f050054

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/high16 v12, 0x7f0a0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "appInfo":Landroid/view/View;
    new-instance v12, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v12, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1, v6}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$2;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v12, 0x7f0a0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredUid:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v12, 0x7f0a0004

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredCmd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    if-eqz v9, :cond_1

    array-length v12, v9

    if-lez v12, :cond_1

    .line 183
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v8, v2, v3

    .line 185
    .local v8, "pkg":Ljava/lang/String;
    const/16 v12, 0x1000

    :try_start_0
    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 186
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    const v12, 0x7f0a0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f050006

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v12, 0x7f0a000e

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 188
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v12, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const v12, 0x7f0a000f

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v12, 0x7f0a0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v12, 0x7f0a0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v4    # "icon":Landroid/widget/ImageView;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_0
    const v12, 0x7f0a0033

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/superuser/util/Settings;->getAutomaticResponse(Landroid/content/Context;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 230
    new-instance v12, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$5;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v12}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$5;->run()V

    .line 242
    :goto_1
    return-void

    .line 198
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v8    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 209
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "pkg":Ljava/lang/String;
    :pswitch_0
    const-string v12, "Superuser"

    const-string v13, "Automatically allowing due to user preference"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$3;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 219
    :pswitch_1
    const-string v12, "Superuser"

    const-string v13, "Automatically denying due to user preference"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setContentView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 414
    const v5, 0x7f030018

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView(I)V

    .line 416
    const v5, 0x7f0a0031

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    .line 417
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x7f03001b

    const v8, 0x7f0a0032

    invoke-direct {v6, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 418
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 419
    .local v2, "id":I
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v2, v6}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "id":I
    :cond_0
    const v5, 0x7f0a002d

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    .line 423
    const v5, 0x7f0a002f

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 424
    .local v4, "rememberFor":Landroid/widget/RadioButton;
    const v5, 0x7f050040

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v5, 0x7f0a002c

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    .line 427
    const v5, 0x7f0a002b

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    .line 429
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    new-instance v6, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    invoke-direct {v6, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    new-instance v6, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$11;

    invoke-direct {v6, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$11;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-boolean v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRequestReady:Z

    if-eqz v5, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->requestReady()V

    .line 473
    :cond_1
    return-void
.end method
