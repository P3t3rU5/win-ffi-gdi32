require 'win-ffi/core/struct/rectl'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_enumrects
    class ENUMRECTS < FFIAdditions::Struct
      def c; end
      def c=(v) end
      def arcl; end
      def arcl=(v) end

      layout c:    :ulong,
             arcl: [RECTL, 1]
    end
  end
end