require_relative '../../enum/brush/style'
require_relative '../../enum/brush/hatch_style'
require_relative '../../enum/dib_color_identifier'

module WinFFI
  module Gdi32
    # Logical Brush (or Pattern)
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbrushindirect
    class LOGBRUSH < FFIAdditions::Struct
     def lbStyle; end
     def lbStyle=(v); end
     def lbColor; end
     def lbColor=(v); end
     def lbHatch; end
     def lbHatch=(v); end

      layout lbStyle: BrushStyle,
             lbColor: DibColorIdentifier,
             lbHatch: HatchStyle
    end

    LOGBRUSH32 = LOGBRUSH
  end
end
