require 'win-ffi/gdi32/enum/brush/brush_obj_color_type'

module WinFFI
  module Gdi32
    class BRUSHOBJ < FFIAdditions::Struct
      layout iSolidColor:            :ulong,
             pvRbrush:             :pointer,
             flColorType: BrushObjColorType
    end
  end
end