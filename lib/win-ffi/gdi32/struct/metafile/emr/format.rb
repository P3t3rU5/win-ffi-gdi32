module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrformat
    class EMRFORMAT < FFIAdditions::Struct
      attr_accessor :dSignature, :nVersion, :cbData, :offData

      layout dSignature: :dword,
             nVersion:   :dword,
             cbData:     :dword,
             offData:    :dword
    end
  end
end