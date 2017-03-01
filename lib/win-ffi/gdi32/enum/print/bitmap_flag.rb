require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    buffer = [
        :TOPDOWN,    0x0001,
        :NOZEROINIT, 0x0002,
        :DONTCACHE,  0x0004,
        :USERMEM,    0x0008,
        :KMSECTION,  0x0010,
        :NOTSYSMEM,  0x0020,
        :WINDOW_BLT, 0x0040,
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [:UMPDMEM, 0x0080]
      if WINDOWS_VERSION >= 7
        buffer += [:TEMP_ALPHA, 0x0100]
        if WINDOWS_VERSION >= 8
          buffer += [
              :ACC_NOTIFY, 0x8000,
              :RMT_ENTER,  0x4000,
              :RESERVED,   0x3E00,
          ]
        else
          buffer += [:RESERVED, 0xFE00]
        end
      else
        buffer += [:RESERVED, 0xFF00]
      end
    end

    BitmapFlag = enum :bitmap_flag, buffer
  end
end