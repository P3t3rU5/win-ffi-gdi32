require_relative '../emr'
require_relative 'text'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrexttextouta
    class EMREXTTEXTOUT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def iGraphicsMode; end
      def iGraphicsMode=(v) end
      def exScale; end
      def exScale=(v) end
      def eyScale; end
      def eyScale=(v) end
      def emrtext; end
      def emrtext=(v) end

      layout emr:           EMR,
             rclBounds:     RECTL,
             iGraphicsMode: :dword,
             exScale:       :float,
             eyScale:       :float,
             emrtext:       EMRTEXT
    end
  end
end