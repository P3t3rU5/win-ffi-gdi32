require_relative '../emr'
require_relative '../../font/extended_log_font'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrextcreatefontindirectw
    class EMREXTCREATEFONTINDIRECT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihFont; end
      def ihFont=(v); end
      def elfw; end
      def elfw=(v); end

      layout emr:    EMR,
             ihFont: :dword,
             elfw:   EXTLOGFONT
    end
  end
end