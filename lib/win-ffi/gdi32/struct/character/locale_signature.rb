require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318714(v=vs.85).aspx
    class LOCALESIGNATURE < FFIAdditions::Struct
      layout lsUsb:          [:dword, 4],
             lsCsbDefault:   [:dword, 2],
             lsCsbSupported: [:dword, 2]
    end
  end
end