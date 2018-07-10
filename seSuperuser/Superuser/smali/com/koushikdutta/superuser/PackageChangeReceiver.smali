.class public Lcom/koushikdutta/superuser/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    new-instance v0, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;-><init>(Lcom/koushikdutta/superuser/PackageChangeReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;->start()V

    .line 54
    return-void
.end method
