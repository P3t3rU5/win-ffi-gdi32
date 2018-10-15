require 'win-ffi/core/struct/rectl'

require_relative '../../enum/clipping/option'
require_relative '../../enum/clipping/drawing_complexity'
require_relative '../../enum/clipping/full_complexity'
require_relative '../../enum/clipping/type'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_clipobj
    class CLIPOBJ < FFIAdditions::Struct
      def iUniq; end
      def iUniq=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def iDComplexity; end
      def iDComplexity=(v) end
      def iFComplexity; end
      def iFComplexity=(v) end
      def iMode; end
      def iMode=(v) end
      def fjOptions; end
      def fjOptions=(v) end

      layout  iUniq:        :ulong,
              rclBounds:    RECTL,
              iDComplexity: DrawingComplexity,
              iFComplexity: FullComplexity,
              iMode:        TypeClipping,
              fjOptions:    ClippingOption
    end
  end
end