module WinFFI
  module Gdi32
    # structures for defining DIBs
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmapcoreheader
    class BITMAPCOREHEADER < FFIAdditions::Struct
      attr_accessor :bcSize,
                    :bcWidth,
                    :bcHeight,
                    :bcPlanes,
                    :bcBitCount

      layout bcSize:     :dword, # used to get to color table
             bcWidth:    :word,
             bcHeight:   :word,
             bcPlanes:   :word,
             bcBitCount: :word
    end
  end
end