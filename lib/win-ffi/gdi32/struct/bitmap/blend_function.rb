require 'win-ffi/gdi32/enum/bitmap/alpha_channel_blend_function'
require 'win-ffi/gdi32/enum/bitmap/alpha_channel_format'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183393(v=vs.85).aspx
    class BLENDFUNCTION < FFIAdditions::Struct
      layout BlendOp: AlphaChannelBlendFunction,
             BlendFlags:                  :byte,
             SourceConstantAlpha:         :byte,
             AlphaFormat:    AlphaChannelFormat
    end
  end
end