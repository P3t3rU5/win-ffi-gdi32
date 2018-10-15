require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrscaleviewportextex
    class EMRSCALEVIEWPORTEXTEX < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def xNum; end
      def xNum=(v) end
      def xDenom; end
      def xDenom=(v) end
      def yNum; end
      def yNum=(v) end
      def yDenom; end
      def yDenom=(v) end

      layout emr:    EMR,
             xNum:   :long,
             xDenom: :long,
             yNum:   :long,
             yDenom: :long
    end

    class EMRSCALEWINDOWEXTEX < EMRSCALEVIEWPORTEXTEX; end
  end
end