require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrresizepalette
    class EMRRESTOREDC < FFIAdditions::Struct
      attr_accessor :emr, :iRelative

      layout emr:       EMR,
             iRelative: :long  # Specifies a relative instance
    end
  end
end