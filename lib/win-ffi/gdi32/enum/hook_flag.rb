require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    buffer = [
        :BITBLT,            0x00000001,
        :STRETCHBLT,        0x00000002,
        :PLGBLT,            0x00000004,
        :TEXTOUT,           0x00000008,
        :PAINT,             0x00000010,
        :STROKEPATH,        0x00000020,
        :FILLPATH,          0x00000040,
        :STROKEANDFILLPATH, 0x00000080,
        :LINETO,            0x00000100,
        :COPYBITS,          0x00000400,
        :MOVEPANNING,       0x00000800,
        :SYNCHRONIZE,       0x00001000,
        :STRETCHBLTROP,     0x00002000,
        :SYNCHRONIZEACCESS, 0x00004000,
        :TRANSPARENTBLT,    0x00008000,
        :ALPHABLEND,        0x00010000,
        :GRADIENTFILL,      0x00020000,
    ]

    buffer += WindowsVersion < :vista ? [:FLAGS, 0x0003b5ff] : [:FLAGS, 0x0003b5ef]

    HookFlag = enum :hook_flag, buffer

    define_prefix(:HOOK, HookFlag)
  end
end