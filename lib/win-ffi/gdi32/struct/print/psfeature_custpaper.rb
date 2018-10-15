module WinFFI
  module Gdi32
    # Information about custom paper size
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_psfeature_custpaper
    class PSFEATURE_CUSTPAPER < FFIAdditions::Struct
      def lOrientation; end
      def lOrientation=(v) end
      def lWidth; end
      def lWidth=(v) end
      def lHeight; end
      def lHeight=(v) end
      def lWidthOffset; end
      def lWidthOffset=(v) end
      def lHeightOffset; end
      def lHeightOffset=(v) end

      layout lOrientation:  :long,
             lWidth:        :long,
             lHeight:       :long,
             lWidthOffset:  :long,
             lHeightOffset: :long
    end
  end
end