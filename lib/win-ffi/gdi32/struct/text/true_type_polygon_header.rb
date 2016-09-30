require 'win-ffi/gdi32/enum/text/true_type_polygon_header_type'

require 'win-ffi/gdi32/struct/text/point_fx'

module WinFFI
  module Gdi32

    # https://msdn.microsoft.com/en-us/library/dd145158(v=vs.85).aspx
    class TTPOLYGONHEADER < FFIAdditions::Struct
      layout cb:                        :dword,
             dwType: TrueTypePolygonHeaderType,
             pfxStart:                 POINTFX

      def initialize
        super
        self[:cb] = self.size
      end
    end
  end
end