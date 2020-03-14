require_relative 'wcrun'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-fd_glyphset
    class FD_GLYPHSET < FFIAdditions::Struct
      attr_accessor :cjThis,
                    :flAccel,
                    :cGlyphsSupported,
                    :cRuns,
                    :awcrun

      layout cjThis:           :ulong,
             flAccel:          :flong,
             cGlyphsSupported: :ulong,
             cRuns:            :ulong,
             awcrun:           [WCRUN, 1]
    end
  end
end