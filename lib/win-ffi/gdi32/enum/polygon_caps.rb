module WinFFI
  module Gdi32
    # Polygonal Capabilities
    PolygonCaps = enum :polygon_caps, [
        :NONE,        0,
        :POLYGON,     1,
        :RECTANGLE,   2,
        :WINDPOLYGON, 4,
        :TRAPEZOID,   4,
        :SCANLINE,    8,
        :WIDE,        16,
        :STYLED,      32,
        :WIDESTYLED,  64,
        :INTERIORS,   128,
        :POLYPOLYGON, 256,
        :PATHS,       512,
    ]

    define_prefix(:PC, PolygonCaps)
  end
end