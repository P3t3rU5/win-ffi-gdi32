module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagenhmetarecord
    class ENHMETARECORD < FFIAdditions::Struct
      layout iType: :dword,
             nSize: :dword,
             dParm: [:dword, 1]
    end
  end
end