require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162512(v=vs.85).aspx
    # Base record type for the enhanced metafile.
    class EMR < FFIAdditions::Struct
      layout iType: :dword, # Enhanced metafile record type
             nSize: :dword  # Length of the record in bytes. This must be a multiple of 4.
    end
  end
end