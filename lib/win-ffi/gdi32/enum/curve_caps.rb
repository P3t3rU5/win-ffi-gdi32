module WinFFI
  module Gdi32
    # Curve Capabilities
    CurveCaps = enum :curve_caps, [
        :NONE,       0,
        :CIRCLES,    1,
        :PIE,        2,
        :CHORD,      4,
        :ELLIPSES,   8,
        :WIDE,       16,
        :STYLED,     32,
        :WIDESTYLED, 64,
        :INTERIORS,  128,
        :ROUNDRECT,  256
    ]

    define_prefix(:CC, CurveCaps)
  end
end