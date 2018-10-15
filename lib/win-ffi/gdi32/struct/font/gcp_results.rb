require_relative '../../enum/font/get_character_placement_class'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taggcp_resultsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taggcp_resultsw
    class GCP_RESULTS < FFIAdditions::Struct
      def lStructSize; end
      def lStructSize=(v); end
      def lpOutString; end
      def lpOutString=(v); end
      def lpOrder; end
      def lpOrder=(v); end
      def lpDx; end
      def lpDx=(v); end
      def lpCaretPos; end
      def lpCaretPos=(v); end
      def lpClass; end
      def lpClass=(v); end
      def lpGlyphs; end
      def lpGlyphs=(v); end
      def nGlyphs; end
      def nGlyphs=(v); end
      def nMaxFit; end
      def nMaxFit=(v); end

      layout lStructSize: :dword,
             lpOutString: :string,
             lpOrder:     :pointer,
             lpDx:        :pointer,
             lpCaretPos:  :pointer,
             lpClass:     GetCharacterPlacementClass,
             lpGlyphs:    :string,
             nGlyphs:     :uint,
             nMaxFit:     :int

      def initialize
        super
        self.lStructSize = self.size
      end

      private :lStructSize, :lStructSize=
    end
  end
end