require_relative '../../enum/font/true_type_polygon_header_type'

require_relative 'point_fx'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-ttpolycurve
    class TTPOLYGONHEADER < FFIAdditions::Struct
      attr_accessor :cb, :dwType, :pfxStart

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