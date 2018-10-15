require_relative '../../enum/font/true_type_polygon_header_type'

require_relative 'point_fx'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagttpolygonheader
    class TTPOLYGONHEADER < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def dwType; end
      def dwType=(v); end
      def pfxStart; end
      def pfxStart=(v); end

      layout cb:       :dword,
             dwType:   TrueTypePolygonHeaderType,
             pfxStart: POINTFX

      def initialize
        super
        self.cb = self.size
      end

      private :cb, :cb=
    end
  end
end