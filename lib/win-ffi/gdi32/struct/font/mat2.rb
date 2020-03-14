require_relative 'fixed'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-mat2
    class MAT2 < FFIAdditions::Struct
      attr_accessor :eM11, :eM12, :eM21, :eM22

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