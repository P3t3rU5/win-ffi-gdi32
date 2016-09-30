require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Graphics Modes
    GraphicMode = enum :graphic_mode, [
        :COMPATIBLE, 1,
        :ADVANCED,   2,
        :LAST,       2
    ]

    define_prefix(:GM, GraphicMode)
  end
end