require_relative 'new_text_metric'
require_relative '../character/font_signature'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagnewtextmetricexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagnewtextmetricexw
    class NEWTEXTMETRICEX < FFIAdditions::Struct
      def ntmTm; end
      def ntmTm=(v); end
      def ntmFontSig; end
      def ntmFontSig=(v); end

      layout ntmTm:      NEWTEXTMETRIC,
             ntmFontSig: FONTSIGNATURE
    end
  end
end