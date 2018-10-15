require_relative '../../constant'

module WinFFI
  module Gdi32
    #define STAMP_DESIGNVECTOR  (0x8000000 + 'd' + ('v' << 8))
    STAMP_DESIGNVECTOR = 0x8007661
    #define STAMP_AXESLIST      (0x8000000 + 'a' + ('l' << 8))
    #define STAMP_TRUETYPE_VARIATION (0x8000000 + 't' + ('v' << 8))
    #define STAMP_CFF2          (0x8000000 + 'c' + ('v' << 8))

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagdesignvector
    class DESIGNVECTOR < FFIAdditions::Struct
      def dvReserved; end
      def dvReserved=(v); end
      def dvNumAxes; end
      def dvNumAxes=(v); end
      def dvValues; end
      def dvValues=(v); end

      layout dvReserved: :dword,
             dvNumAxes:  :dword,
             dvValues:   [:long, MM_MAX_NUMAXES]

      def initialize
        dvReserved = STAMP_DESIGNVECTOR
        super
      end

      private :dvReserved=
    end
  end
end