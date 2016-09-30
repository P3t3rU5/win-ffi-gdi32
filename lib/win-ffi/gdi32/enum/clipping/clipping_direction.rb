module WinFFI
  module Gdi32
    ClippingDirection = enum :clipping_direction, [
        :RIGHTDOWN, 0,
        :LEFTDOWN,  1,
        :RIGHTUP,   2,
        :LEFTUP,    3,
        :ANY,       4,
        :LEFTWARDS, 1,
        :UPWARDS,   2,
    ]

    define_prefix(:CD, ClippingDirection)
  end
end