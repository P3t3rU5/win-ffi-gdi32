require_relative '../../enum/font/rasterizer_status_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-rasterizer_status
    class RASTERIZER_STATUS < FFIAdditions::Struct
      attr_accessor :nSize, :wFlags, :nLanguageID

      layout nSize:       :short,
             wFlags:      RasterizerStatusFlag,
             nLanguageID: :short

      def initialize
        super
        self.nSize = self.size
      end

      private :nSize, :nSize=
    end
  end
end