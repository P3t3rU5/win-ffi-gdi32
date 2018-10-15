require_relative '../emr'

module WinFFI
  module Gdi32

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrselectobject
    class EMRSELECTOBJECT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihObject; end
      def ihObject=(v) end

      layout emr:      EMR,
             ihObject: :dword
    end

    class EMRDELETEOBJECT < EMRSELECTOBJECT; end
  end
end