require_relative '../emr'
require_relative '../../opengl/pixel_format_descriptor'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpixelformat
    class EMRPIXELFORMAT < FFIAdditions::Struct
      attr_accessor :emr, :pfd

      layout emr: EMR,
             pfd: PIXELFORMATDESCRIPTOR
    end
  end
end