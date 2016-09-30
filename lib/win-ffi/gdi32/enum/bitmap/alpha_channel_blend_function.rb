require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # currentlly defined blend function
    AlphaChannelBlendFunction = enum :alpha_channel_blend_function, [:OVER, 0x00]

    define_prefix(:AC_SRC, AlphaChannelBlendFunction)
  end
end