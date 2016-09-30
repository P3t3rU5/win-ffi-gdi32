require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Device Technologies
    DeviceTechnology = enum :device_technology, [
        :PLOTTER,    0,
        :RASDISPLAY, 1,
        :RASPRINTER, 2,
        :RASCAMERA,  3,
        :CHARSTREAM, 4,
        :METAFILE,   5,
        :DISPFILE,   6
    ]

    define_prefix(:DT, DeviceTechnology)
  end
end