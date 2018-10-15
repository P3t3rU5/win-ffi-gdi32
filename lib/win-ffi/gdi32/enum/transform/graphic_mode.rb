module WinFFI
  module Gdi32
    # Graphics Modes
    GraphicMode = enum :graphic_mode, [:COMPATIBLE, 1, :LAST, 2, :ADVANCED, 2]

    define_prefix(:GM, GraphicMode)
  end
end