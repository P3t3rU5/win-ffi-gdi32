require_relative 'font_signature'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagcharsetinfo
    class CHARSETINFO < FFIAdditions::Struct
      def ciCharset; end
      def ciCharset=(v) end
      def ciACP; end
      def ciACP=(v) end
      def fs; end
      def fs=(v) end

      layout ciCharset: :uint,
             ciACP:     :uint,
             fs:        FONTSIGNATURE
    end
  end
end