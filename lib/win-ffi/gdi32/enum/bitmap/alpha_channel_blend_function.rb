module WinFFI
  module Gdi32
    # currentlly defined blend function
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_blendfunction
    AlphaChannelBlendFunction = enum :alpha_channel_blend_function, [:OVER, 0x00]

    define_prefix(:AC_SRC, AlphaChannelBlendFunction)
  end
end