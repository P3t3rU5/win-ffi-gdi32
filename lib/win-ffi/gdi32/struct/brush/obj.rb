require_relative '../../enum/brush/obj_color_type'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_brushobj
    class BRUSHOBJ < FFIAdditions::Struct
      def iSolidColor; end
      def iSolidColor=(v); end
      def pvRbrush; end
      def pvRbrush=(v); end
      def flColorType; end
      def flColorType=(v); end

      layout iSolidColor: :ulong,
             pvRbrush:    :pointer,
             flColorType: BrushObjColorType
    end
  end
end