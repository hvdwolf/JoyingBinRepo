.class public Lcom/koushikdutta/widgets/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field private CheckboxVisible:Z

.field private Enabled:Z

.field private Icon:I

.field private Summary:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private checked:Z

.field mAttr:I

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFragment:Lcom/koushikdutta/widgets/BetterListFragment;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;II)V
    .locals 2
    .param p1, "context"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p2, "title"    # I
    .param p3, "summary"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    .line 51
    iput v1, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 129
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 130
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p2}, Lcom/koushikdutta/widgets/BetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    .line 102
    :cond_0
    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {p1, p3}, Lcom/koushikdutta/widgets/BetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    .line 104
    :cond_1
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;III)V
    .locals 0
    .param p1, "context"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p2, "title"    # I
    .param p3, "summary"    # I
    .param p4, "icon"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;II)V

    .line 115
    iput p4, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    .line 51
    iput v1, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 129
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 130
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    .line 108
    iput-object p2, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "icon"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput p4, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "context"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p4, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/koushikdutta/widgets/ListItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/widgets/ListItem;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    return p1
.end method


# virtual methods
.method public getCheckboxVisible()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    return v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 154
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 155
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 156
    :cond_0
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v8}, Lcom/koushikdutta/widgets/BetterListFragment;->getListItemResource()I

    move-result v8

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    :cond_1
    sget v8, Lcom/koushikdutta/widgets/R$id;->title:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 160
    .local v6, "title":Landroid/widget/TextView;
    sget v8, Lcom/koushikdutta/widgets/R$id;->summary:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, "summary":Landroid/widget/TextView;
    sget v8, Lcom/koushikdutta/widgets/R$id;->checkbox:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 162
    .local v0, "cb":Landroid/widget/CompoundButton;
    invoke-virtual {v0, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 164
    move-object v2, p2

    .line 165
    .local v2, "cv":Landroid/view/View;
    new-instance v8, Lcom/koushikdutta/widgets/ListItem$1;

    invoke-direct {v8, p0, v2}, Lcom/koushikdutta/widgets/ListItem$1;-><init>(Lcom/koushikdutta/widgets/ListItem;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 174
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 176
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 177
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 180
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 181
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_1
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 187
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_2
    sget v8, Lcom/koushikdutta/widgets/R$id;->image:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 194
    .local v4, "iv":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 195
    iget v8, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    if-eqz v8, :cond_2

    .line 196
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    .local v1, "ctx":Landroid/content/Context;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 198
    .local v7, "value":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    iget v11, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 199
    iput v9, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 200
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 203
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v7    # "value":Landroid/util/TypedValue;
    :cond_2
    iget v8, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    if-eqz v8, :cond_7

    .line 204
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget v8, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :cond_3
    :goto_3
    return-object p2

    .end local v4    # "iv":Landroid/widget/ImageView;
    :cond_4
    move v8, v10

    .line 173
    goto :goto_0

    .line 185
    :cond_5
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 191
    :cond_6
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 207
    .restart local v4    # "iv":Landroid/widget/ImageView;
    :cond_7
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_8

    .line 208
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 212
    :cond_8
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    return-void
.end method

.method onClickInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 220
    iget-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    if-eqz v1, :cond_1

    .line 221
    sget v1, Lcom/koushikdutta/widgets/R$id;->checkbox:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 223
    .local v0, "cb":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 228
    .end local v0    # "cb":Landroid/widget/CompoundButton;
    :goto_1
    return-void

    .line 223
    .restart local v0    # "cb":Landroid/widget/CompoundButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    .end local v0    # "cb":Landroid/widget/CompoundButton;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 56
    return-object p0
.end method

.method public setCheckboxVisible(Z)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 135
    return-object p0
.end method

.method public setChecked(Z)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 150
    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 47
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 48
    return-object p0
.end method

.method public setEnabled(Z)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 62
    return-object p0
.end method

.method public setIcon(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    iput p1, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 41
    return-object p0
.end method

.method public setSummary(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "summary"    # I

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/ListItem;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/ListItem;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 96
    return-object p0
.end method

.method public setTitle(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/ListItem;->setTitle(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/ListItem;->setTitle(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 83
    return-object p0
.end method
