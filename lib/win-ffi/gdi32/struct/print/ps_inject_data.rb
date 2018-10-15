require_relative '../../enum/print/ps_inject_flag'

module WinFFI
  module Gdi32
    # Header structure for the input buffer to POSTSCRIPT_INJECTION escape
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_psinjectdata
    class PSINJECTDATA < FFIAdditions::Struct
      def DataBytes; end
      def DataBytes=(v); end
      def InjectionPoint; end
      def InjectionPoint=(v); end
      def PageNumber; end
      def PageNumber=(v); end

      layout DataBytes:      :dword,
             InjectionPoint: PsInjectFlag,
             PageNumber:     :word
    end
  end
end