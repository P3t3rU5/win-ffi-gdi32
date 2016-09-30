require 'win-ffi/gdi32'

require 'win-ffi/gdi32/enum/ps_inject_flag'

module WinFFI
  module Gdi32
    # Header structure for the input buffer to POSTSCRIPT_INJECTION escape
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162877(v=vs.85).aspx
    class PSINJECTDATA < FFIAdditions::Struct
      layout DataBytes:            :dword,
             InjectionPoint: PsInjectFlag,
             PageNumber:            :word
    end
  end
end