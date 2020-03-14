require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcolorcorrectpalette
    class EMRCOLORCORRECTPALETTE < FFIAdditions::Struct
      attr_accessor :emr,
                    :ihPalette,
                    :nFirstEntry,
                    :nPalEntries,
                    :nReserved

      layout emr:         EMR,
             ihPalette:   :dword, # Palette handle index
             nFirstEntry: :dword, # Index of first entry to correct
             nPalEntries: :dword, # Number of palette entries to correct
             nReserved:   :dword  # Reserved
    end
  end
end