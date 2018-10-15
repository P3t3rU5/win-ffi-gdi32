module WinFFI
  module Gdi32
    class PATHOBJ < FFIAdditions::Struct
      def fl; end
      def fl=(v); end
      def cCurves; end
      def cCurves=(v); end

      layout fl:      :flong,
             cCurves: :ulong
    end
  end
end