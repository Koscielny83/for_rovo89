.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;
    }
.end annotation


# static fields
.field public static final DEX2OAT_NEEDED:I = 0x1

.field public static final NO_DEXOPT_NEEDED:I = 0x0

.field public static final PATCHOAT_NEEDED:I = 0x2

.field public static final SELF_PATCHOAT_NEEDED:I = 0x3


# instance fields
.field private mCookie:Ljava/lang/Object;

.field private final mFileName:Ljava/lang/String;

.field private mInternalCookie:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ldalvik/system/DexFile;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 2
    .param p0, "cookie"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    .line 97
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 11
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    if-eqz p2, :cond_47

    .line 137
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "parent":Ljava/lang/String;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->getuid()I

    move-result v2

    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget v3, v3, Landroid/system/StructStat;->st_uid:I

    if-eq v2, v3, :cond_47

    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Optimized data directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    const-string/jumbo v4, " is not owned by the current user. Shared storage cannot protect"

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    const-string/jumbo v4, " your application from code injection attacks."

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_46
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_46} :catch_46

    .line 143
    .end local v1    # "parent":Ljava/lang/String;
    :catch_46
    move-exception v0

    .line 148
    :cond_47
    invoke-static {p1, p2, p3, p4, p5}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private static native closeDexFile(Ljava/lang/Object;)Z
.end method

.method private static defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "dexFile"    # Ldalvik/system/DexFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            "Ldalvik/system/DexFile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 294
    .local p4, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    .line 296
    .local v2, "result":Ljava/lang/Class;
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/DexFile;->defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 306
    .end local v2    # "result":Ljava/lang/Class;
    :cond_5
    :goto_5
    return-object v2

    .line 301
    .restart local v2    # "result":Ljava/lang/Class;
    :catch_6
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    if-eqz p4, :cond_5

    .line 303
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 297
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_d
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    if-eqz p4, :cond_5

    .line 299
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private static native defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation
.end method

.method private static native getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
.end method

.method public static native getDexFileOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public static native getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public static native getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getOatFileCompilerFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private static native isBackedByOatFile(Ljava/lang/Object;)Z
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native isProfileGuidedCompilerFilter(Ljava/lang/String;)Z
.end method

.method public static native isValidCompilerFilter(Ljava/lang/String;)Z
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .registers 4
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {p0, p1, p2, v0, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method static loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .registers 11
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ldalvik/system/DexFile;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-object v0
.end method

.method private static openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
    .registers 7
    .param p0, "sourceName"    # Ljava/lang/String;
    .param p1, "outputName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 367
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 368
    if-nez p1, :cond_11

    .line 367
    :goto_c
    invoke-static {v1, v0, p2, p3, p4}, Ldalvik/system/DexFile;->openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 370
    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private static native openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 248
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    iput-object v1, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 251
    :cond_f
    iput-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 246
    :cond_11
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 349
    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 352
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_1f

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 347
    return-void

    .line 350
    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Failed to close dex file in finalizer."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1f

    .line 354
    :catchall_1f
    move-exception v0

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 354
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method isBackedByOatFile()Z
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->isBackedByOatFile(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 277
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "slashName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 289
    .local p3, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {p1, p2, v0, p0, p3}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
