module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-localesignature
    class LOCALESIGNATURE < FFIAdditions::Struct
      attr_accessor :lsUsb, :lsCsbDefault, :lsCsbSupported

      layout lsUsb:          [:dword, 4],
             lsCsbDefault:   [:dword, 2],
             lsCsbSupported: [:dword, 2]
    end
  end
end