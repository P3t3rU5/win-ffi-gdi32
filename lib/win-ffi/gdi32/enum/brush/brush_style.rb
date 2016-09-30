require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Brush Styles
    # https://msdn.microsoft.com/en-us/library/dd145035(v=vs.85).aspx
    BrushStyle = enum :brush_style, [
        :SOLID,         0,
        :NULL,          1,
        :HOLLOW,        1,
        :HATCHED,       2,
        :PATTERN,       3,
        :INDEXED,       4,
        :DIBPATTERN,    5,
        :DIBPATTERNPT,  6,
        :PATTERN8X8,    7,
        :DIBPATTERN8X8, 8,
        :MONOPATTERN,   9,
    ]

    define_prefix(:BS, BrushStyle)
  end
end