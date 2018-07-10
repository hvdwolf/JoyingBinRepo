.class Lcom/koushikdutta/superuser/PolicyFragment$3;
.super Ljava/lang/Object;
.source "PolicyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragment;->showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragment;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragment$3;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    return-void
.end method
