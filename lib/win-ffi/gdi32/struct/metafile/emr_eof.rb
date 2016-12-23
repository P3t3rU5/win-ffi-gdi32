require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    class EMREOF < FFIAdditions::Struct
      layout emr:              EMR,
             nPalEntries:   :dword, # Number of palette entries
             offPalEntries: :dword, # Offset to the palette entries
             nSizeLast:     :dword  # Same as nSize and must be the last DWORD of the record.
                                    # The palette entries, if exist, precede this field.
    end
  end
end