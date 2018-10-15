module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagxform
    class XFORM < FFIAdditions::Struct
      def eM11; end
      def eM11=(v) end
      def eM12; end
      def eM12=(v) end
      def eM21; end
      def eM21=(v) end
      def eM22; end
      def eM22=(v) end
      def eDx; end
      def eDx=(v) end
      def eDy; end
      def eDy=(v) end

      layout eM11: :float,
             eM12: :float,
             eM21: :float,
             eM22: :float,
             eDx:  :float,
             eDy:  :float
    end
  end
end