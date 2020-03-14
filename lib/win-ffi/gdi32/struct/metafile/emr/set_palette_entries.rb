require_relative '../emr'
require_relative '../../color/palette_entry'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetpaletteentries
    class EMRSETPALETTEENTRIES < FFIAdditions::Struct
      attr_accessor :emr, :ihPal, :iStart, :cEntries, :aPalEntries

      layout emr:         EMR,
             ihPal:       :dword, # Palette handle index
             iStart:      :dword,
             cEntries:    :dword,
             aPalEntries: [PALETTEENTRY, 1] # The peFlags fields do not contain any flags
    end
  end
end