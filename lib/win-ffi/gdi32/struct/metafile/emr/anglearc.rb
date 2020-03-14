require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emranglearc
    class EMRANGLEARC < FFIAdditions::Struct
      attr_accessor :emr,
                    :ptlCenter,
                    :nRadius,
                    :eStartAngle,
                    :eSweepAngle

      layout emr:         EMR,
             ptlCenter:   POINTL,
             nRadius:     :dword,
             eStartAngle: :float,
             eSweepAngle: :float
    end
  end
end