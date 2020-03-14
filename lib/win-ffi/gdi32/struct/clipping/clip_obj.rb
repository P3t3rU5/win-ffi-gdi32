require 'win-ffi/core/struct/rectl'

require_relative '../../enum/clipping/option'
require_relative '../../enum/clipping/drawing_complexity'
require_relative '../../enum/clipping/full_complexity'
require_relative '../../enum/clipping/type'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-clipobj
    class CLIPOBJ < FFIAdditions::Struct
      attr_accessor :iUniq,
                    :rclBounds,
                    :iDComplexity,
                    :iFComplexity,
                    :iMode,
                    :fjOptions

      layout  iUniq:        :ulong,
              rclBounds:    RECTL,
              iDComplexity: DrawingComplexity,
              iFComplexity: FullComplexity,
              iMode:        TypeClipping,
              fjOptions:    ClippingOption
    end
  end
end