require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrmodifyworldtransform
    class EMRMODIFYWORLDTRANSFORM < FFIAdditions::Struct
      attr_accessor :emr, :xform, :iMode

      layout emr:   EMR,
             xform: XFORM,
             iMode: :dword
    end
  end
end