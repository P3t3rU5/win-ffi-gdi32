require_relative '../emr'
require_relative '../../pen/ext_log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrextcreatefontindirectw
    class EMREXTCREATEFONTINDIRECT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihPen; end
      def ihPen=(v); end
      def offBmi; end
      def offBmi=(v); end
      def cbBmi; end
      def cbBmi=(v); end
      def offBits; end
      def offBits=(v); end
      def cbBits; end
      def cbBits=(v); end
      def elp; end
      def elp=(v); end

      layout emr:     EMR,
             ihPen:   :dword,
             offBmi:  :dword,
             cbBmi:   :dword,
             offBits: :dword,
             cbBits:  :dword,
             elp:     EXTLOGPEN32
    end
  end
end