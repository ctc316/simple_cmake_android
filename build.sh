#!/bin/sh

#android path
ANDROID_NDK=~/android-ndk-r10d/
ANDORID_JNI_LIB_DIR=~/Desktop/JNITest/app/src/main/jni/libs

#build path
BUILD_SRC_DIR=./build_src
BUILD_DIR=./build_tmp
BUILD_RESULT_DIR=./build_result

#clear result dir
rm -rf $BUILD_RESULT_DIR
mkdir $BUILD_RESULT_DIR

function run() {

	#clean tmp dir
	rm -rf $BUILD_DIR
	mkdir $BUILD_DIR
	cp -r $BUILD_SRC_DIR/. $BUILD_DIR


	cd $BUILD_DIR
	#configure 
	cmake -DCMAKE_TOOLCHAIN_FILE=android.toolchain.cmake \
		  -DANDROID_NDK=$ANDROID_NDK \
		  -DCMAKE_BUILD_TYPE=Release \
		  -DANDROID_ABI=$ANDROID_ABI \
		  . 
	
	#build
	cmake --build  . \
		  --clean-first 

    cd ..
    

    #copy out result library 
    mkdir $BUILD_RESULT_DIR/$ANDROID_ABI/
    cp $BUILD_DIR/*.a $BUILD_RESULT_DIR/$ANDROID_ABI/  
}


#build for arm64-v8a
ANDROID_ABI="arm64-v8a"
run;

#build for armeabi
ANDROID_ABI="armeabi"
run;

#build for armeabi-v7a
ANDROID_ABI="armeabi-v7a"
run;

#build for mips
ANDROID_ABI="mips"
run;

#build for mips64
ANDROID_ABI="mips64"
run;

#build for x86
ANDROID_ABI="x86"
run;

#build for x86_64
ANDROID_ABI="x86_64"
run;

#copy to android project 
if [ -d "$ANDORID_JNI_LIB_DIR" ]; then
  cp -rf $BUILD_RESULT_DIR/* $ANDORID_JNI_LIB_DIR
  echo "Done..., copied results to "$ANDORID_JNI_LIB_DIR
else
  echo "Done..., JNI library dir not exists"
fi



