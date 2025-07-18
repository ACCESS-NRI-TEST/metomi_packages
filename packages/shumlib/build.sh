makefile=$RECIPE_DIR/make/linux-64
make -f $makefile all_libs check LIBDIR_OUT=$PWD/out
ls $PWD/out/*
mkdir -p $PREFIX/{include,lib}
cp -v $PWD/out/include/?_shum_*.{h,mod} $PREFIX/include
cp -v $PWD/out/include/shumlib_version.h $PREFIX/include
cp -v $PWD/out/lib/libshum_*.{a,so} $PREFIX/lib