.class Lcom/koushikdutta/superuser/SettingsFragment$8$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragment$8;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment$8;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$8$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$8$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$8;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$8;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setTimeout(Landroid/content/Context;I)V

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$8$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$8;

    iget-object v1, p0, Lcom/koushikdutta/superuser/SettingsFragment$8$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$8;

    iget-object v1, v1, Lcom/koushikdutta/superuser/SettingsFragment$8;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v2, 0x7f050044

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/superuser/SettingsFragment$8$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$8;

    iget-object v5, v5, Lcom/koushikdutta/superuser/SettingsFragment$8;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v5}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/koushikdutta/superuser/util/Settings;->getRequestTimeout(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/SettingsFragment$8;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    .line 313
    return-void
.end method
