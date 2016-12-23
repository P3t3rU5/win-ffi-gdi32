require 'win-ffi/gdi32/struct/font/fixed'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145048(v=vs.85).aspx
    class MAT2 < FFIAdditions::Struct
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