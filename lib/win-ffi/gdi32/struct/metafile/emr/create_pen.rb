require_relative '../emr'
require_relative '../../../struct/pen/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcreatepen
    class EMRCREATEPEN < FFIAdditions::Struct
      attr_accessor :emr, :ihPen, :lopn

      layout emr:   EMR,
             ihPen: :dword,
             lopn:  LOGPEN
    end
  end
end