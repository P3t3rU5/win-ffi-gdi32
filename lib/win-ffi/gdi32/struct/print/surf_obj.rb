require 'win-ffi/core/struct/sizel'

require_relative '../../enum/print/surface_type'
require_relative '../../enum/print/bitmap_format'
require_relative '../../enum/print/bitmap_flag'

module WinFFI
  module Gdi32

    typedef :handle, :dhsurf
    typedef :handle, :hsurf
    typedef :handle, :dhsurf
    typedef :handle, :hdev
    typedef :handle, :dhpdev

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_surfobj
    class SURFOBJ < FFIAdditions::Struct
      def dhsurf; end
      def dhsurf=(v) end
      def hsurf; end
      def hsurf=(v) end
      def dhpdev; end
      def dhpdev=(v) end
      def hdev; end
      def hdev=(v) end
      def sizlBitmap; end
      def sizlBitmap=(v) end
      def cjBits; end
      def cjBits=(v) end
      def pvBits; end
      def pvBits=(v) end
      def pvScan0; end
      def pvScan0=(v) end
      def lDelta; end
      def lDelta=(v) end
      def iUniq; end
      def iUniq=(v) end
      def iBitmapFormat; end
      def iBitmapFormat=(v) end
      def iType; end
      def iType=(v) end
      def fjBitmap; end
      def fjBitmap=(v) end

      layout dhsurf:        :dhsurf,
             hsurf:         :hsurf,
             dhpdev:        :dhpdev,
             hdev:          :hdev,
             sizlBitmap:    SIZEL,
             cjBits:        :ulong,
             pvBits:        :pointer,
             pvScan0:       :pointer,
             lDelta:        :long,
             iUniq:         :ulong,
             iBitmapFormat: BitmapFormat,
             iType:         SurfaceType,
             fjBitmap:      BitmapFlag
    end
  end
end