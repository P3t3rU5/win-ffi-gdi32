require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetmiterlimit
    class EMRSETMITERLIMIT < FFIAdditions::Struct
      attr_accessor :emr, :eMiterLimit

      layout emr:         EMR,
             eMiterLimit: :float
    end
  end
end