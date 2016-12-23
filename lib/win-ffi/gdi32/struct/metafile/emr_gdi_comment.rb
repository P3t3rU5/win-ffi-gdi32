require 'win-ffi/gdi32'

require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162538(v=vs.85).aspx
    class EMRGDICOMMENT < FFIAdditions::Struct
      layout emr:        EMR,
             cbData:  :dword, # Size of data in bytes
             Data: [:byte, 1]
    end
  end
end