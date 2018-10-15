require_relative '../../enum/pen/style'
require_relative '../brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagextlogpen
    class EXTLOGPEN < FFIAdditions::Struct
      def elpPenStyle; end
      def elpPenStyle=(v); end
      def elpWidth; end
      def elpWidth=(v); end
      def elpBrushStyle; end
      def elpBrushStyle=(v); end
      def elpColor; end
      def elpColor=(v); end
      def elpHatch; end
      def elpHatch=(v); end
      def elpNumEntries; end
      def elpNumEntries=(v); end
      def elpStyleEntry; end
      def elpStyleEntry=(v); end

      layout elpPenStyle:   PenStyle,
             elpWidth:      :dword,
             elpBrushStyle: LOGBRUSH,
             elpColor:      :colorref,
             elpHatch:      :ulong,
             elpNumEntries: :dword,
             elpStyleEntry: [:dword, 1]
    end

    EXTLOGPEN32 = EXTLOGPEN
  end
end