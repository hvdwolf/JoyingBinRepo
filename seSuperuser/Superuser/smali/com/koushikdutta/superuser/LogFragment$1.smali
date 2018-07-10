.class Lcom/koushikdutta/superuser/LogFragment$1;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/LogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/LogFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/LogFragment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    iget-object v0, v0, Lcom/koushikdutta/superuser/LogFragment;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    iget-object v1, v1, Lcom/koushikdutta/superuser/LogFragment;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->delete(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)Z

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragment;->onDelete()V

    .line 76
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->deleteLogs(Landroid/content/Context;)V

    goto :goto_0
.end method
