require 'win-ffi/gdi32'
require 'win-ffi/gdi32/enum/font/rasterizer_status_flag'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162891(v=vs.85).aspx
    class RASTERIZER_STATUS < FFIAdditions::Struct
      layout nSize:                :short,
             wFlags: RasterizerStatusFlag,
             nLanguageID:          :short

      def initialize
        super
        self[:nSize] = self.size
      end
    end
  end
end