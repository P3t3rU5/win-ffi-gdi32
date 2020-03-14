require_relative '../../enum/brush/obj_color_type'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-brushobj
    class BRUSHOBJ < FFIAdditions::Struct
      attr_accessor :iSolidColor, :pvRbrush, :flColorType

      layout iSolidColor: :ulong,
             pvRbrush:    :pointer,
             flColorType: BrushObjColorType
    end
  end
end