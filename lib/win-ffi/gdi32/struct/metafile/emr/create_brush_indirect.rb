require_relative '../emr'
require_relative '../../brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrcreatebrushindirect
    class EMRCREATEBRUSHINDIRECT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihBrush; end
      def ihBrush=(v) end
      def lb; end
      def lb=(v) end

      layout emr:     EMR,
             ihBrush: :dword,
             lb:      LOGBRUSH32
    end
  end
end