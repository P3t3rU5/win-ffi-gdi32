require 'win-ffi/gdi32/struct/font/new_text_metric'
require 'win-ffi/gdi32/struct/character/font_signature'

module WinFFI
  module Gdi32
    class NEWTEXTMETRICEX < FFIAdditions::Struct
      layout ntmTm:      NEWTEXTMETRIC,
             ntmFontSig: FONTSIGNATURE
    end
  end
end