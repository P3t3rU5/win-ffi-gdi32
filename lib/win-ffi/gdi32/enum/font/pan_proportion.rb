module WinFFI
  module Gdi32
    PanProportion = enum :pan_proportion, [
        :ANY,            0, # Any
        :NO_FIT,         1, # No Fit
        :OLD_STYLE,      2, # Old Style
        :MODERN,         3, # Modern
        :EVEN_WIDTH,     4, # Even Width
        :EXPANDED,       5, # Expanded
        :CONDENSED,      6, # Condensed
        :VERY_EXPANDED,  7, # Very Expanded
        :VERY_CONDENSED, 8, # Very Condensed
        :MONOSPACED,     9, # Monospaced
    ]

    define_prefix(:PAN_PROP, PanProportion)
  end
end