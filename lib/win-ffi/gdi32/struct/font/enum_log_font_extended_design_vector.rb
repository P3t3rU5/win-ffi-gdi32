require_relative 'enum_log_font_extended'
require_relative 'design_vector'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumlogfontexdva
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumlogfontexdvw
    class ENUMLOGFONTEXDV < FFIAdditions::Struct
      attr_accessor :elfEnumLogfontEx, :elfDesignVector

      layout elfEnumLogfontEx: ENUMLOGFONTEX,
             elfDesignVector:  DESIGNVECTOR
    end
  end
end