require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrresizepalette
    class EMRRESIZEPALETTE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihPal; end
      def ihPal=(v) end
      def cEntries; end
      def cEntries=(v) end

      layout emr:      EMR,
             ihPal:    :dword, # Palette handle index
             cEntries: :dword
    end
  end
end