require 'win-ffi/gdi32/struct/text/enum_log_font_extended'
require 'win-ffi/gdi32/struct/text/design_vector'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162628(v=vs.85).aspx
    class ENUMLOGFONTEXDV < FFIAdditions::Struct
      layout elfEnumLogfontEx: ENUMLOGFONTEX,
             elfDesignVector:   DESIGNVECTOR
    end
  end
end