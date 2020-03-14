require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetworldtransform
    class EMRSETWORLDTRANSFORM < FFIAdditions::Struct
      attr_accessor :emr, :xform

      layout emr:   EMR,
             xform: XFORM
    end
  end
end