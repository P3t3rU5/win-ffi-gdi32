module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemr
    # Base record type for the enhanced metafile.
    class EMR < FFIAdditions::Struct
      layout iType: :dword, # Enhanced metafile record type
             nSize: :dword  # Length of the record in bytes. This must be a multiple of 4.
    end
  end
end