module WinFFI
  module Gdi32
    # Color Management caps
    ColorManagement = enum :color_management, [
        :NONE,       0x00000000,
        :DEVICE_ICM, 0x00000001,
        :GAMMA_RAMP, 0x00000002,
        :CMYK_COLOR, 0x00000004
    ]

    define_prefix(:CM, ColorManagement)
  end
end