module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-fontsignature
    class FONTSIGNATURE < FFIAdditions::Struct
      attr_accessor :fsUsb, :fsCsb

      layout fsUsb: [:dword, 4],
             fsCsb: [:dword, 2]
    end
  end
end