.class public final Lcom/koushikdutta/widgets/AnimatedView;
.super Ljava/lang/Object;
.source "AnimatedView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 26
    new-instance v0, Lcom/koushikdutta/widgets/AnimatedView$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/widgets/AnimatedView$1;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
