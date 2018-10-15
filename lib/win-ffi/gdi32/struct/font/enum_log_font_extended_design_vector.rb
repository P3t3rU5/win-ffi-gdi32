require_relative 'enum_log_font_extended'
require_relative 'design_vector'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagenumlogfontexdva
    class ENUMLOGFONTEXDV < FFIAdditions::Struct
      def elfEnumLogfontEx; end
      def elfEnumLogfontEx=(v); end
      def elfDesignVector; end
      def elfDesignVector=(v); end

      layout elfEnumLogfontEx: ENUMLOGFONTEX,
             elfDesignVector:  DESIGNVECTOR
    end
  end
end