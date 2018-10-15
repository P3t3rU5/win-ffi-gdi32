require_relative 'fixed'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_mat2
    class MAT2 < FFIAdditions::Struct
      def eM11; end
      def eM11=(v); end
      def eM12; end
      def eM12=(v); end
      def eM21; end
      def eM21=(v); end
      def eM22; end
      def eM22=(v); end

      layout eM11: FIXED,
             eM12: FIXED,
             eM21: FIXED,
             eM22: FIXED

      def self.identity
        new.tap do |i|
          i.eM11.value = 1
          i.eM12.value = 0
          i.eM21.value = 0
          i.eM22.value = 1
        end
      end
    end
  end
end