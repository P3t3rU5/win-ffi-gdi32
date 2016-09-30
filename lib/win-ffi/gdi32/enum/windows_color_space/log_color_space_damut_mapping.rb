require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    LogColorSpaceDamutMapping = enum :log_color_space_damut_mapping, [
        :BUSINESS,         0x00000001,
        :GRAPHICS,         0x00000002,
        :IMAGES,           0x00000004,
        :ABS_COLORIMETRIC, 0x00000008,
    ]

    define_prefix(:LCS_GM, LogColorSpaceDamutMapping)
  end
end