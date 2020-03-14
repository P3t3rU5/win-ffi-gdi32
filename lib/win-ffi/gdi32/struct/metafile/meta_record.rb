module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-metarecord
    class METARECORD < FFIAdditions::Struct
      attr_accessor :rdSize, :rdFunction, :rdParm

      layout rdSize:     :dword,
             rdFunction: :word,
             rdParm:     [:word, 1]
    end
  end
end