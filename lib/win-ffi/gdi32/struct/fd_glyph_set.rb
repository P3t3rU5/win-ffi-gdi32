require 'win-ffi/gdi32/struct/wcrun'

module WinFFI
  module Gdi32
    class FD_GLYPHSET < FFIAdditions::Struct
      layout cjThis:           :ulong,
             flAccel:          :flong,
             cGlyphsSupported: :ulong,
             cRuns:            :ulong,
             awcrun:        [WCRUN, 1]
    end
  end
end