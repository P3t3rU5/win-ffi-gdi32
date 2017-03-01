require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    buffer = [
        :SRCCHARSET,  1,
        :SRCCODEPAGE, 2,
        :SRCFONTSIG,  3,
    ]

    buffer += [:SRCLOCALE, 0x1000] if WINDOWS_VERSION >= :xp

    TranslateCharsetInfoFlag = enum :translate_charset_info_flag, buffer

    define_prefix(:TCI, TranslateCharsetInfoFlag)
  end
end