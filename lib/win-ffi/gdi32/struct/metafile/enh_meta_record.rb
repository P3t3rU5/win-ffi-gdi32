module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enhmetarecord
    class ENHMETARECORD < FFIAdditions::Struct
      attr_accessor :iType, :nSize, :dParm

      layout iType: :dword,
             nSize: :dword,
             dParm: [:dword, 1]
    end
  end
end