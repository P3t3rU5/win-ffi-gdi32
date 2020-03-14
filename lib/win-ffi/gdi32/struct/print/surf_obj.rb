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

    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-surfobj
    class SURFOBJ < FFIAdditions::Struct
      attr_accessor :dhsurf,
                    :hsurf,
                    :dhpdev,
                    :hdev,
                    :sizlBitmap,
                    :cjBits,
                    :pvBits,
                    :pvScan0,
                    :lDelta,
                    :iUniq,
                    :iBitmapFormat,
                    :iType,
                    :fjBitmap,

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