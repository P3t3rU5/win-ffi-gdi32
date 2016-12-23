require 'win-ffi/gdi32/enum/font/get_character_placement_class'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd144842(v=vs.85).aspx
    class GCP_RESULTS < FFIAdditions::Struct
      layout lStructSize:                 :dword,
             lpOutString:                :string,
             lpOrder:                   :pointer, # uint
             lpDx:                      :pointer, # int
             lpCaretPos:                :pointer, # int
             lpClass: GetCharacterPlacementClass,
             lpGlyphs:                   :string,
             nGlyphs:                      :uint,
             nMaxFit:                       :int

      def initialize
        super
        self[:lStructSize] = self.size
      end
    end
  end
end