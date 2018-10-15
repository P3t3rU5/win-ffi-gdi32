require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrselectpalette
    class EMRSELECTPALETTE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihPal; end
      def ihPal=(v) end

      layout emr:   EMR,
             ihPal: :dword  # Palette handle index, background mode only
    end
  end
end