require_relative '../../enum/print/ps_inject_flag'

module WinFFI
  module Gdi32
    # Header structure for the input buffer to POSTSCRIPT_INJECTION escape
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-psinjectdata
    class PSINJECTDATA < FFIAdditions::Struct
      attr_accessor :DataBytes, :InjectionPoint, :PageNumber

      layout DataBytes:      :dword,
             InjectionPoint: PsInjectFlag,
             PageNumber:     :word
    end
  end
end