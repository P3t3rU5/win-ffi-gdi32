require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrextselectcliprgn
    class EMREXTSELECTCLIPRGN < FFIAdditions::Struct
      attr_accessor :emr, :cbRgnData, :iMode, :RgnData

      layout emr:       EMR,
             cbRgnData: :dword,
             iMode:     :dword,
             RgnData:   [:byte, 1]
    end
  end
end