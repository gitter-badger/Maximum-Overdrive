.class final Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5097
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 9
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 5099
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 5100
    .local v0, v1:I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 5102
    .local v1, v2:I
    if-eq v0, v1, :cond_d

    .line 5103
    if-le v0, v1, :cond_b

    .line 5122
    :cond_a
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 5103
    goto :goto_a

    .line 5105
    :cond_d
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 5106
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 5107
    if-eq v0, v1, :cond_17

    .line 5108
    if-gt v0, v1, :cond_a

    move v2, v3

    goto :goto_a

    .line 5110
    :cond_17
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_23

    .line 5111
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    .line 5113
    :cond_23
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 5114
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 5116
    if-eq v0, v1, :cond_2d

    .line 5117
    if-gt v0, v1, :cond_a

    move v2, v3

    goto :goto_a

    .line 5119
    :cond_2d
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_39

    .line 5120
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    .line 5122
    :cond_39
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5097
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$4;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
