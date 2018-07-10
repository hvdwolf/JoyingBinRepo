.class public Lcom/koushikdutta/superuser/MainActivity;
.super Lcom/koushikdutta/widgets/BetterListActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-direct {p0, v0}, Lcom/koushikdutta/widgets/BetterListActivity;-><init>(Ljava/lang/Class;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/superuser/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/superuser/MainActivity;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MainActivity;->getListContainerId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/koushikdutta/superuser/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/superuser/MainActivity;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MainActivity;->getListContainerId()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v0, 0x7f06001d

    invoke-static {p0, v0}, Lcom/koushikdutta/superuser/util/Settings;->applyDarkThemeSetting(Landroid/app/Activity;I)V

    .line 88
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/BetterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 54
    new-instance v1, Landroid/view/MenuInflater;

    invoke-direct {v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "mi":Landroid/view/MenuInflater;
    const/high16 v3, 0x7f090000

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    const v3, 0x7f0a0034

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 57
    .local v0, "about":Landroid/view/MenuItem;
    new-instance v3, Lcom/koushikdutta/superuser/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/koushikdutta/superuser/MainActivity$1;-><init>(Lcom/koushikdutta/superuser/MainActivity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 69
    const v3, 0x7f0a0035

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 70
    .local v2, "settings":Landroid/view/MenuItem;
    new-instance v3, Lcom/koushikdutta/superuser/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/koushikdutta/superuser/MainActivity$2;-><init>(Lcom/koushikdutta/superuser/MainActivity;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 82
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/BetterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method
