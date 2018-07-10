.class Lcom/koushikdutta/superuser/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MainActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    const v2, 0x7f050047

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    # invokes: Lcom/koushikdutta/superuser/MainActivity;->getListContainerId()I
    invoke-static {v1}, Lcom/koushikdutta/superuser/MainActivity;->access$100(Lcom/koushikdutta/superuser/MainActivity;)I

    move-result v1

    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-direct {v2}, Lcom/koushikdutta/superuser/SettingsFragment;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 79
    const/4 v0, 0x1

    return v0
.end method
