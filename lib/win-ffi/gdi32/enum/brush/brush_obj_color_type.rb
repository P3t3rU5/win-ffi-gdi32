require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    buffer = [
        :DEVICE_ICM, 0x01,
        :HOST_ICM,   0x02,
        :CMYKCOLOR,  0x04,
    ]

    buffer += [:ORIGCOLOR, 0x08] if WindowsVersion >= :xp

    # BRUSHOBJ::flColorType
    BrushObjColorType = enum :brush_obj_color_type, buffer

    define_prefix(:BR, BrushObjColorType)
  end
end