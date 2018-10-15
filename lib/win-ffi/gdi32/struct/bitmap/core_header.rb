module WinFFI
  module Gdi32
    # structures for defining DIBs
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagbitmapcoreheader
    class BITMAPCOREHEADER < FFIAdditions::Struct
      def bcSize; end
      def bcSize=(v) end
      def bcWidth; end
      def bcWidth=(v) end
      def bcHeight; end
      def bcHeight=(v) end
      def bcPlanes; end
      def bcPlanes=(v) end
      def bcBitCount; end
      def bcBitCount=(v) end

      layout bcSize:     :dword, # used to get to color table
             bcWidth:    :word,
             bcHeight:   :word,
             bcPlanes:   :word,
             bcBitCount: :word
    end
  end
end