Pod::Spec.new do |spec|
  spec.name         = 'ffmpeg-sdk'
  spec.version      = '3.2'

  spec.homepage     = 'https://github.com/ll100-cn/ffmpeg-sdk'
  spec.authors      = { 'll100' => 'develop@ll100.com' }
  spec.summary      = 'FFmpeg for iOS'
  spec.source       = { git: "https://github.com/ll100-cn/ffmpeg-sdk.git", tag: spec.version }

  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/ffmpeg-sdk/FFmpeg-iOS/include"' }
  spec.vendored_library = [ "FFmpeg-iOS/lib/*.a", "fdk-aac-ios/lib/*.a" ]
  spec.frameworks = [ "AVFoundation", "CoreMedia", "AudioToolbox", "VideoToolbox" ]
  spec.library = [ "z", "iconv", "bz2" ]

  spec.prepare_command = "./prepare_build.sh"
end
