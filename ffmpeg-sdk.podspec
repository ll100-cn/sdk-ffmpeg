Pod::Spec.new do |spec|
  spec.name         = 'FFMpegSDK'
  spec.version      = '20170405'

  spec.homepage     = 'https://github.com/ll100-cn/ffmpeg-sdk'
  spec.authors      = { 'll100' => 'develop@ll100.com' }
  spec.summary      = 'FFMpeg for iOS'
  spec.source       = { git: "https://github.com/ll100-cn/ffmpeg-sdk.git", tag: spec.version }

  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/FFMpegSDK/fdk-aac-ios/include" "${PODS_ROOT}/FFMpegSDK/FFmpeg-iOS/include"' }
  spec.preserve_paths = [ "fdk-aac-ios/include/**", "FFmpeg-iOS/include/**" ]
  spec.vendored_library = [ "fdk-aac-ios/lib/*.a", "FFmpeg-iOS/lib/*.a" ]
  spec.frameworks = [ "AVFoundation", "CoreMedia", "AudioToolbox", "VideoToolbox" ]
  spec.library = [ "z", "iconv", "bz2" ]

  spec.prepare_command = "./prepare_build.sh"
end
