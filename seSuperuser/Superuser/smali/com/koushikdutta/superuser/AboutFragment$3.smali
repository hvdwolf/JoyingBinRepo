.class Lcom/koushikdutta/superuser/AboutFragment$3;
.super Lcom/koushikdutta/widgets/ListItem;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/AboutFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/AboutFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/koushikdutta/superuser/AboutFragment$3;->this$0:Lcom/koushikdutta/superuser/AboutFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "http://github.com/koush/Superuser"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/koushikdutta/superuser/AboutFragment$3;->this$0:Lcom/koushikdutta/superuser/AboutFragment;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/superuser/AboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
