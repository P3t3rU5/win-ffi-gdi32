require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemranglearc
    class EMRANGLEARC < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptlCenter; end
      def ptlCenter=(v); end
      def nRadius; end
      def nRadius=(v); end
      def eStartAngle; end
      def eStartAngle=(v); end
      def eSweepAngle; end
      def eSweepAngle=(v); end

      layout emr:         EMR,
             ptlCenter:   POINTL,
             nRadius:     :dword,
             eStartAngle: :float,
             eSweepAngle: :float
    end
  end
end