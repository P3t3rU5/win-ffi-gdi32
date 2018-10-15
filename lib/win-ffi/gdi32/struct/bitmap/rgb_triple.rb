module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagrgbtriple
    class RGBTRIPLE < FFIAdditions::Struct
      def rgbtBlue; end
      def rgbtBlue=(v); end
      def rgbtGreen; end
      def rgbtGreen=(v); end
      def rgbtRed; end
      def rgbtRed=(v); end

      layout rgbtBlue:  :byte,
             rgbtGreen: :byte,
             rgbtRed:   :byte
    end
  end
end