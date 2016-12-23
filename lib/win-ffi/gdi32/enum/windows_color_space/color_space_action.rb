require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Image Color Matching color definitions
    # https://msdn.microsoft.com/en-us/library/dd371949(v=vs.85).aspx
    ColorSpaceAction = enum :color_space_action, [
        :ENABLE,           0x00000001,
        :DISABLE,          0x00000002,
        :DELETE_TRANSFORM, 0x00000003,
    ]

    define_prefix(:CS, ColorSpaceAction)
  end
end