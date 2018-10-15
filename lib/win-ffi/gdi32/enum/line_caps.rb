module WinFFI
  module Gdi32
    # Line Capabilities
    LineCaps = enum :line_caps, [
        :NONE,       0,
        :POLYLINE,   2,
        :MARKER,     4,
        :POLYMARKER, 8,
        :WIDE,       16,
        :STYLED,     32,
        :WIDESTYLED, 64,
        :INTERIORS,  128
    ]

    define_prefix(:LC, LineCaps)
  end
end