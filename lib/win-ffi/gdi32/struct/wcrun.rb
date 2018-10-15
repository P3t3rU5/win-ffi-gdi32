module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_wcrun
    class WCRUN < FFIAdditions::Struct
      def wcLow; end
      def wcLow=(v) end
      def cGlyphs; end
      def cGlyphs=(v) end
      def phg; end
      def phg=(v) end

      layout wcLow:   :wchar,
             cGlyphs: :ushort,
             phg:     :pointer
    end
  end
end