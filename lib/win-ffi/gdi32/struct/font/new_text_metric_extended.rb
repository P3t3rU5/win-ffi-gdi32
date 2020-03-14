require_relative 'new_text_metric'
require_relative '../character/font_signature'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-newtextmetricexa
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-newtextmetricexw
    class NEWTEXTMETRICEX < FFIAdditions::Struct
      attr_accessor :ntmTm, :ntmFontSig

      layout ntmTm:      NEWTEXTMETRIC,
             ntmFontSig: FONTSIGNATURE
    end
  end
end