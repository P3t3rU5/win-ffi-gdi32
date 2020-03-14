require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetbkcolor
    class EMRSETBKCOLOR < FFIAdditions::Struct
      attr_accessor :emr, :crColor

      layout emr:     EMR,
             crColor: :colorref
    end

    class EMRSETTEXTCOLOR < EMRSETBKCOLOR; end
  end
end