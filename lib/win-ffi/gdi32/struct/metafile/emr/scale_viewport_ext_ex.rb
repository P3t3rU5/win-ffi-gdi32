require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrscaleviewportextex
    class EMRSCALEVIEWPORTEXTEX < FFIAdditions::Struct
      attr_accessor :emr, :xNum, :xDenom, :yNum, :yDenom

      layout emr:    EMR,
             xNum:   :long,
             xDenom: :long,
             yNum:   :long,
             yDenom: :long
    end

    class EMRSCALEWINDOWEXTEX < EMRSCALEVIEWPORTEXTEX; end
  end
end