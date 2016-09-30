require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # constants for Get/SetSystemPaletteUse()
    SystemPalette = enum :system_palette, [
        :ERROR,       0,
        :STATIC,      1,
        :NOSTATIC,    2,
        :NOSTATIC256, 3,
    ]

    define_prefix(:SYSPAL, SystemPalette)
  end
end