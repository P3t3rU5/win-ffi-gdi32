require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrglsrecord
    class EMRGLSRECORD < FFIAdditions::Struct
      attr_accessor :emr, :cbData, :Data

      layout emr:    EMR,
             cbData: :dword,
             Data:   [:byte, 1]
    end
  end
end