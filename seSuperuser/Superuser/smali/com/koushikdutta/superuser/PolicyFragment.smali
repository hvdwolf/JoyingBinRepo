.class public Lcom/koushikdutta/superuser/PolicyFragment;
.super Lcom/koushikdutta/widgets/ListContentFragment;
.source "PolicyFragment.java"


# static fields
.field private static final DATA_BUNDLE_KEY:Ljava/lang/String; = "deleted"


# instance fields
.field mWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/widgets/ListContentFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/superuser/PolicyFragment;Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/superuser/PolicyFragment;
    .param p1, "x1"    # Lcom/koushikdutta/superuser/db/UidPolicy;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/superuser/PolicyFragment;->showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V

    return-void
.end method

.method private showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    .locals 5
    .param p1, "policy"    # Lcom/koushikdutta/superuser/db/UidPolicy;
    .param p2, "resource"    # I

    .prologue
    .line 207
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/koushikdutta/superuser/PolicyFragment$3;

    invoke-direct {v4, p0}, Lcom/koushikdutta/superuser/PolicyFragment$3;-><init>(Lcom/koushikdutta/superuser/PolicyFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 217
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 218
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void
.end method


# virtual methods
.method addPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    .locals 10
    .param p1, "up"    # Lcom/koushikdutta/superuser/db/UidPolicy;
    .param p2, "last"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 119
    .local v6, "df":Ljava/text/DateFormat;
    if-nez p2, :cond_0

    .line 120
    const/4 v4, 0x0

    .line 123
    .local v4, "date":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/superuser/db/UidPolicy;->getPolicyResource()I

    move-result v9

    new-instance v0, Lcom/koushikdutta/superuser/PolicyFragment$1;

    iget-object v3, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/PolicyFragment$1;-><init>(Lcom/koushikdutta/superuser/PolicyFragment;Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    invoke-virtual {p0, v9, v0}, Lcom/koushikdutta/superuser/PolicyFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v8

    .line 139
    .local v8, "li":Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 140
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 141
    const v0, 0x7f02000e

    invoke-virtual {v8, v0}, Lcom/koushikdutta/widgets/ListItem;->setIcon(I)Lcom/koushikdutta/widgets/ListItem;

    .line 144
    :goto_1
    return-void

    .line 122
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "li":Lcom/koushikdutta/widgets/ListItem;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/superuser/PolicyFragment;->getLastDate(I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "date":Ljava/lang/String;
    goto :goto_0

    .line 143
    .restart local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "li":Lcom/koushikdutta/widgets/ListItem;
    :cond_1
    invoke-virtual {v8, v7}, Lcom/koushikdutta/widgets/ListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_1
.end method

.method protected createLogFragment()Lcom/koushikdutta/superuser/LogFragment;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/koushikdutta/superuser/LogFragment;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/LogFragment;-><init>()V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 64
    :goto_0
    return-object v1

    .line 61
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 62
    .local v0, "value":Landroid/util/TypedValue;
    invoke-super {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f010004

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 64
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method public getLastDate(I)Ljava/util/Date;
    .locals 6
    .param p1, "last"    # I

    .prologue
    .line 113
    new-instance v0, Ljava/util/Date;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method load()V
    .locals 8

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->clear()V

    .line 74
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 76
    .local v4, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    new-instance v6, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/superuser/db/UidPolicy;

    .line 79
    .local v5, "up":Lcom/koushikdutta/superuser/db/UidPolicy;
    const/4 v2, 0x0

    .line 80
    .local v2, "last":I
    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 81
    .local v3, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 82
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/koushikdutta/superuser/db/LogEntry;

    iget v2, v6, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    .line 83
    :cond_0
    invoke-virtual {p0, v5, v2}, Lcom/koushikdutta/superuser/PolicyFragment;->addPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "last":I
    .end local v3    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    .end local v5    # "up":Lcom/koushikdutta/superuser/db/UidPolicy;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/ListContentFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/PolicyFragment;->setHasOptionsMenu(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->load()V

    .line 103
    const-string v1, "com.koushikdutta.superuser"

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const v1, 0x7f0a0007

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "watermark":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 106
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .end local v0    # "watermark":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->isPaged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->showAllLogs()V

    .line 110
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/ListContentFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 242
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, "mi":Landroid/view/MenuInflater;
    const v2, 0x7f090001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 244
    const v2, 0x7f0a0036

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 245
    .local v0, "log":Landroid/view/MenuItem;
    new-instance v2, Lcom/koushikdutta/superuser/PolicyFragment$4;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/PolicyFragment$4;-><init>(Lcom/koushikdutta/superuser/PolicyFragment;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->load()V

    .line 93
    return-void
.end method

.method setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    .locals 4
    .param p1, "li"    # Lcom/koushikdutta/widgets/ListItem;
    .param p2, "up"    # Lcom/koushikdutta/superuser/db/UidPolicy;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->createLogFragment()Lcom/koushikdutta/superuser/LogFragment;

    move-result-object v1

    .line 223
    .local v1, "l":Lcom/koushikdutta/superuser/LogFragment;
    invoke-virtual {v1, p2}, Lcom/koushikdutta/superuser/LogFragment;->setUidPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;)Lcom/koushikdutta/superuser/LogFragment;

    .line 224
    if-eqz p2, :cond_0

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "command"

    iget-object v3, p2, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "uid"

    iget v3, p2, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v2, "desiredUid"

    iget v3, p2, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v1, v0}, Lcom/koushikdutta/superuser/LogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 231
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/LogFragment;->setListContentId(I)V

    .line 232
    if-nez p2, :cond_1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-nez p2, :cond_2

    const v2, 0x7f050025

    invoke-virtual {p0, v2}, Lcom/koushikdutta/superuser/PolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v1, v3, v2}, Lcom/koushikdutta/superuser/PolicyFragment;->setContent(Landroid/app/Fragment;ZLjava/lang/String;)V

    .line 233
    return-void

    .line 232
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/koushikdutta/superuser/db/UidPolicy;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method showAllLogs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0}, Lcom/koushikdutta/superuser/PolicyFragment;->setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 69
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 70
    return-void
.end method

.method public showExtraActions(Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V
    .locals 6
    .param p1, "up"    # Lcom/koushikdutta/superuser/db/UidPolicy;
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    const-string v5, "allow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "permissionChange":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    const v5, 0x7f050045

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/PolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const v5, 0x7f050015

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/PolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 155
    .local v2, "items":[Ljava/lang/String;
    new-instance v4, Lcom/koushikdutta/superuser/PolicyFragment$2;

    invoke-direct {v4, p0, v3, p1, p2}, Lcom/koushikdutta/superuser/PolicyFragment$2;-><init>(Lcom/koushikdutta/superuser/PolicyFragment;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 203
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void

    .line 150
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "items":[Ljava/lang/String;
    .end local v3    # "permissionChange":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
