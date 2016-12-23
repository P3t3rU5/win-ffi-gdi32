require 'win-ffi/gdi32/struct/metafile/emr'
require 'win-ffi/gdi32/struct/color/palette_entry'

module WinFFI
  module Gdi32
    class EMRSETPALETTEENTRIES < FFIAdditions::Struct
      layout emr:                      EMR,
             ihPal:                 :dword, # Palette handle index
             iStart:                :dword,
             cEntries:              :dword,
             aPalEntries: [PALETTEENTRY, 1] # The peFlags fields do not contain any flags
    end
  end
end