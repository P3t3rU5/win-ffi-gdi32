require_relative '../emr'
require_relative '../../opengl/pixel_format_descriptor'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrpixelformat
    class EMRPIXELFORMAT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def pfd; end
      def pfd=(v); end

      layout emr: EMR,
             pfd: PIXELFORMATDESCRIPTOR
    end
  end
end