module WinFFI
  module Gdi32
    # alpha format flags
    AlphaChannelFormat = enum :alpha_channel_format, [:ALPHA, 0x01]

    define_prefix(:AC_SRC, AlphaChannelFormat)
  end
end