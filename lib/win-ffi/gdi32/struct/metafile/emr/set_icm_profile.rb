require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrseticmprofile
    class EMRSETICMPROFILE < FFIAdditions::Struct
      attr_accessor :emr, :dwFlags, :cbName, :cbData, :Data

      layout emr:     EMR,
             dwFlags: :dword,
             cbName:  :dword,
             cbData:  :int,
             Data:    [:byte, 1]
    end
  end
end