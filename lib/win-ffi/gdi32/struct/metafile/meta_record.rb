module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagmetarecord
    class METARECORD < FFIAdditions::Struct
      layout rdSize:     :dword,
             rdFunction: :word,
             rdParm:     [:word, 1]
    end
  end
end