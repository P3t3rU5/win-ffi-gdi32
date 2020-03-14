require_relative '../../enum/font/get_character_placement_class'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-gcp_resultsa
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-gcp_resultsw
    class GCP_RESULTS < FFIAdditions::Struct
      attr_accessor :lStructSize,
                    :lpOutString,
                    :lpOrder,
                    :lpDx,
                    :lpCaretPos,
                    :lpClass,
                    :lpGlyphs,
                    :nGlyphs,
                    :nMaxFit

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