require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class FONTSIGNATURE < FFIAdditions::Struct
      layout fsUsb: [:dword, 4],
             fsCsb: [:dword, 2]
    end
  end
end