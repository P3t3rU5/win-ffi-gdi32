require 'win-ffi/gdi32/struct/character/font_signature'

module WinFFI
  module Gdi32
    class CHARSETINFO < FFIAdditions::Struct
      layout ciCharset:  :uint,
             ciACP:      :uint,
             fs: FONTSIGNATURE
    end
  end
end