require 'win-ffi/gdi32/enum/brush/brush_style'
require 'win-ffi/gdi32/enum/brush/hatch_style'
require 'win-ffi/gdi32/enum/dib_color_identifier'

module WinFFI
  module Gdi32
    # Logical Brush (or Pattern)
    # https://msdn.microsoft.com/en-us/library/dd183487(v=vs.85).aspx
    class LOGBRUSH32 < FFIAdditions::Struct
      layout lbStyle:         BrushStyle,
             lbColor: DibColorIdentifier,
             lbHatch:         HatchStyle
    end
  end
end
