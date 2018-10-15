require_relative 'wcrun'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_fd_glyphset
    class FD_GLYPHSET < FFIAdditions::Struct
      def cjThis; end
      def cjThis=(v) end
      def flAccel; end
      def flAccel=(v) end
      def cGlyphsSupported; end
      def cGlyphsSupported=(v) end
      def cRuns; end
      def cRuns=(v) end
      def awcrun; end
      def awcrun=(v) end

      layout cjThis:           :ulong,
             flAccel:          :flong,
             cGlyphsSupported: :ulong,
             cRuns:            :ulong,
             awcrun:           [WCRUN, 1]
    end
  end
end