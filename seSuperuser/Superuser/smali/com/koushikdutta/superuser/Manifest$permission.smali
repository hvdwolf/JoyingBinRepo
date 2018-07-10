.class public final Lcom/koushikdutta/superuser/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/superuser/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final REPORT_SUPERUSER:Ljava/lang/String; = "android.permission.REPORT_SUPERUSER"

.field public static final REQUEST_SUPERUSER:Ljava/lang/String; = "android.permission.REQUEST_SUPERUSER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
