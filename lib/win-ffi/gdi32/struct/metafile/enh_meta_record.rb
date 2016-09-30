require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162608(v=vs.85).aspx
    class ENHMETARECORD < FFIAdditions::Struct
      layout iType:     :dword,
             nSize:     :dword,
             dParm: [:dword, 1]
    end
  end
end