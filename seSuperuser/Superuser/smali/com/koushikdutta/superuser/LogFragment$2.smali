.class Lcom/koushikdutta/superuser/LogFragment$2;
.super Lcom/koushikdutta/widgets/ListItem;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/LogFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/LogFragment;

.field final synthetic val$date:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/LogFragment;Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogFragment$2;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    iput-object p6, p0, Lcom/koushikdutta/superuser/LogFragment$2;->val$date:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/ListItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "ret":Landroid/view/View;
    iget-object v1, p0, Lcom/koushikdutta/superuser/LogFragment$2;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    iget-object v1, v1, Lcom/koushikdutta/superuser/LogFragment;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-nez v1, :cond_0

    .line 143
    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/koushikdutta/superuser/LogFragment$2;->val$date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-object v0
.end method
