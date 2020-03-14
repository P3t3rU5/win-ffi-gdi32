require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetmapperflags
    class EMRSETMAPPERFLAGS < FFIAdditions::Struct
      attr_accessor :emr, :dwFlags

      layout emr:     EMR,
             dwFlags: :dword
    end
  end
end