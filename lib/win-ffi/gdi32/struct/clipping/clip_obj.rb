require 'win-ffi/gdi32/enum/clipping/clipping_option'
require 'win-ffi/gdi32/enum/clipping/drawing_complexity'
require 'win-ffi/gdi32/enum/clipping/full_complexity'
require 'win-ffi/gdi32/enum/clipping/type_clipping'

require 'win-ffi/gdi32/struct/metafile/rectl'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff539417%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    class CLIPOBJ < FFIAdditions::Struct
      layout  iUniq:                   :ulong,
              rclBounds:                RECTL,
              iDComplexity: DrawingComplexity,
              iFComplexity:    FullComplexity,
              iMode:             TypeClipping,
              fjOptions:       ClippingOption
    end
  end
end