module WinFFI
  module Gdi32
    # StretchBlt() Modes
    BLACKONWHITE =      1
    WHITEONBLACK =      2
    COLORONCOLOR =      3
    HALFTONE = MAXSTRETCHBLTMODE = 4

    # New StretchBlt() Modes
    Stretch = enum :stretch, [
        :ANDSCANS,    BLACKONWHITE,
        :ORSCANS,     WHITEONBLACK,
        :DELETESCANS, COLORONCOLOR,
        :HALFTONE,    HALFTONE,
    ]

    define_prefix(:STRETCH, Stretch)
  end
end