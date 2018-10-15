require_relative '../../enum/font/rasterizer_status_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_rasterizer_status
    class RASTERIZER_STATUS < FFIAdditions::Struct
      def nSize; end
      def nSize=(v); end
      def wFlags; end
      def wFlags=(v); end
      def nLanguageID; end
      def nLanguageID=(v); end

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