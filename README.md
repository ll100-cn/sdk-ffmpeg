## 说明

请使用 [ffmpeg-kit](https://github.com/sunteya/ffmpeg-kit) 的 fdk-aac 分支编译 ffmepg

命令行如下

```
./ios.sh --enable-custom-library-1-name=fdk-aac --enable-custom-library-1-repo=https://github.com/mstorsjo/fdk-aac --enable-custom-library-1-repo-tag=v0.1.6 --enable-custom-library-1-package-config-file-name=fdk-aac --enable-custom-library-1-ffmpeg-enable-flag=libfdk-aac --enable-custom-library-1-license-file=NOTICE --xcframework
```
