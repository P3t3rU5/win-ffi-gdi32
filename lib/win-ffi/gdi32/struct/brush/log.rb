require_relative '../../enum/brush/style'
require_relative '../../enum/brush/hatch_style'
require_relative '../../enum/dib_color_identifier'

module WinFFI
  module Gdi32
    # Logical Brush (or Pattern)
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-logbrush
    class LOGBRUSH < FFIAdditions::Struct
      attr_accessor :lbStyle, :lbColor, :lbHatch

      layout lbStyle: BrushStyle,
             lbColor: DibColorIdentifier,
             lbHatch: HatchStyle
    end

    LOGBRUSH32 = LOGBRUSH
  end
end
