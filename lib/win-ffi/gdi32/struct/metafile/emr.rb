module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emr
    # Base record type for the enhanced metafile.
    class EMR < FFIAdditions::Struct
      attr_accessor :iType, :nSize

      layout iType: :dword, # Enhanced metafile record type
             nSize: :dword  # Length of the record in bytes. This must be a multiple of 4.
    end
  end
end