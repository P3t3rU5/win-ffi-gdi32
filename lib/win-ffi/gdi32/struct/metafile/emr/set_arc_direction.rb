require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetarcdirection
    class EMRSETARCDIRECTION < FFIAdditions::Struct
      attr_accessor :emr, :iArcDirection

      layout emr:           EMR,
             iArcDirection: :dword  # Specifies the arc direction in the advanced graphics mode.
    end
  end
end