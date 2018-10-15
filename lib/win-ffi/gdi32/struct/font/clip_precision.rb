module WinFFI
  module Gdi32
    buffer = [
        :DEFAULT_PRECIS,     0,
        :CHARACTER_PRECIS,   1,
        :STROKE_PRECIS,      2,
        :MASK,               0xf,
        :LH_ANGLES,          0x10,
        :TT_ALWAYS,          0x20,
        :EMBEDDED,           0x80
    ]

    buffer += [:DFA_DISABLE, 0x40]

    ClipPrecision = enum :clip_precision, buffer

    define_prefix(:CLIP, ClipPrecision)
  end
end