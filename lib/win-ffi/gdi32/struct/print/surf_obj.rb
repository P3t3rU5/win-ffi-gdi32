require 'win-ffi/gdi32/enum/print/surface_type'
require 'win-ffi/gdi32/enum/print/bitmap_format'
require 'win-ffi/gdi32/enum/print/bitmap_flag'

require 'win-ffi/core/struct/sizel'

module WinFFI
  module Gdi32

    typedef :handle, :dhsurf
    typedef :handle, :hsurf
    typedef :handle, :dhsurf
    typedef :handle, :hdev
    typedef :handle, :dhpdev

    class SURFOBJ < FFIAdditions::Struct
      layout dhsurf:             :dhsurf,
             hsurf:               :hsurf,
             dhpdev:             :dhpdev,
             hdev:                 :hdev,
             sizlBitmap:           SIZEL,
             cjBits:              :ulong,
             pvBits:            :pointer,
             pvScan0:           :pointer,
             lDelta:               :long,
             iUniq:               :ulong,
             iBitmapFormat: BitmapFormat,
             iType:          SurfaceType,
             fjBitmap:        BitmapFlag
    end
  end
end