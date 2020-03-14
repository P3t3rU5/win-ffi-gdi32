require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrresizepalette
    class EMRRESIZEPALETTE < FFIAdditions::Struct
      attr_accessor :emr, :ihPal, :cEntries

      layout emr:      EMR,
             ihPal:    :dword, # Palette handle index
             cEntries: :dword
    end
  end
end