require_relative '../emr'
require_relative '../../color/palette_entry'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetpaletteentries
    class EMRSETPALETTEENTRIES < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihPal; end
      def ihPal=(v) end
      def iStart; end
      def iStart=(v) end
      def cEntries; end
      def cEntries=(v) end
      def aPalEntries; end
      def aPalEntries=(v) end

      layout emr:         EMR,
             ihPal:       :dword, # Palette handle index
             iStart:      :dword,
             cEntries:    :dword,
             aPalEntries: [PALETTEENTRY, 1] # The peFlags fields do not contain any flags
    end
  end
end