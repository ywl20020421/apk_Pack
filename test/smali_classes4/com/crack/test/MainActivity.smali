.class public Lcom/crack/test/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private binding:Lcom/crack/test/databinding/ActivityMainBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "test"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/crack/test/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/crack/test/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/crack/test/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/crack/test/MainActivity;->binding:Lcom/crack/test/databinding/ActivityMainBinding;

    .line 24
    iget-object v0, p0, Lcom/crack/test/MainActivity;->binding:Lcom/crack/test/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/crack/test/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crack/test/MainActivity;->setContentView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/crack/test/MainActivity;->binding:Lcom/crack/test/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/crack/test/databinding/ActivityMainBinding;->sampleText:Landroid/widget/TextView;

    .line 28
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/crack/test/MainActivity;->stringFromJNI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
