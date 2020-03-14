require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetcolorspace
    class EMRSETCOLORSPACE < FFIAdditions::Struct
      attr_accessor :emr, :ihCS

      layout emr:  EMR,
             ihCS: :dword
    end

    class EMRSELECTCOLORSPACE < EMRSETCOLORSPACE; end
    class EMRDELETECOLORSPACE < EMRSETCOLORSPACE; end
  end
end