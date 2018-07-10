.class public Lcom/koushikdutta/superuser/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdminUser(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 62
    .local v2, "um":Landroid/os/UserManager;
    :try_start_0
    const-class v4, Landroid/os/UserManager;

    const-string v7, "getUserHandle"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, "getUserHandle":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 64
    .local v3, "userHandle":I
    if-nez v3, :cond_0

    move v4, v5

    .line 67
    .end local v1    # "getUserHandle":Ljava/lang/reflect/Method;
    .end local v3    # "userHandle":I
    :goto_0
    return v4

    .restart local v1    # "getUserHandle":Ljava/lang/reflect/Method;
    .restart local v3    # "userHandle":I
    :cond_0
    move v4, v6

    .line 64
    goto :goto_0

    .line 66
    .end local v1    # "getUserHandle":Ljava/lang/reflect/Method;
    .end local v3    # "userHandle":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v4, v5

    .line 67
    goto :goto_0
.end method

.method public static loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pn"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 35
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/koushikdutta/superuser/util/ImageCache;->getInstance()Lcom/koushikdutta/superuser/util/ImageCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/koushikdutta/superuser/util/ImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 36
    .local v2, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 43
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ret":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 38
    .restart local v0    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "ret":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {}, Lcom/koushikdutta/superuser/util/ImageCache;->getInstance()Lcom/koushikdutta/superuser/util/ImageCache;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/koushikdutta/superuser/util/ImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ret":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 43
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supportsMultipleUsers(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 50
    .local v2, "um":Landroid/os/UserManager;
    :try_start_0
    const-class v3, Landroid/os/UserManager;

    const-string v5, "supportsMultipleUsers"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 51
    .local v1, "supportsMultipleUsers":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 54
    .end local v1    # "supportsMultipleUsers":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 53
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v3, v4

    .line 54
    goto :goto_0
.end method
