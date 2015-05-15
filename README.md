# simple-cmake-android

A simple project doing cross compile C static library for Android NDK use, build on CMake and toolchain file by taka-no-me (which has done most of the jobs, lots of thanks) 

(https://github.com/taka-no-me/android-cmake)

## How-to
    
1. configure `ANDROID_NDK` path in `build.sh`  (`ANDORID_JNI_LIB_DIR` is optional)
1. run `build.sh`


## Output 

  - Categorized static libraries in directory `build_result/`
  - It will build static libraries for all that ABI that JNI support:
    * `arm64-v8a` - ARMv8 AArch64 instruction set - only for NDK r10 and newer
    * `armeabi` - ARMv5TE based CPU with software floating point operations;
    * `armeabi-v7a`- ARMv7 based devices with hardware FPU instructions (VFPv3_D16);
    * `mips` - MIPS32 instruction set
    * `mips64` - MIPS64 instruction set (r6) - only for NDK r10 and newer
    * `x86` - IA-32 instruction set
    * `x86_64` - Intel64 instruction set (r1) - only for NDK r10 and newer
    

## Copying

_simple-cmake-android_ is distributed under the terms of [BSD 3-Clause License](http://opensource.org/licenses/BSD-3-Clause)