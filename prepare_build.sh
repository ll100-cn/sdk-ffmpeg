#!/usr/bin/env bash

set -ex

function build_fdk_aac {
  curl -OL https://downloads.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-0.1.5.tar.gz
  tar xvf fdk-aac-0.1.5.tar.gz

  curl -OL https://github.com/kewlbear/fdk-aac-build-script-for-iOS/raw/master/build-fdk-aac.sh
  chmod +x build-fdk-aac.sh
  ./build-fdk-aac.sh
}

function cleanup_fdk_aac {
  rm -rf fdk-aac-0.1.5.tar.gz fdk-aac-0.1.5 build-fdk-aac.sh scratch thin
}

function cleanup_ffmpeg {
  rm -rf ffmpeg-3.2 build-ffmpeg.sh scratch thin
}

function build_ffmpeg {
  curl -OL https://github.com/kewlbear/FFmpeg-iOS-build-script/raw/master/build-ffmpeg.sh
  chmod +x build-ffmpeg.sh
  FDK_AAC="$(realpath fdk-aac-ios)" ./build-ffmpeg.sh
}

# read -rsp $'Press enter to continue...\n'

if [ -e fdk-aac-ios/lib/libfdk-aac.a ];  then
  echo fdk-aac installed, skip
else
  build_fdk_aac
  cleanup_fdk_aac
fi

if [ -e FFmpeg-iOS/lib/libavcodec.a ]; then
  echo ffmpeg installed, skip
else
  build_ffmpeg
  cleanup_ffmpeg
fi
