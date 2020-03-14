require_relative '../emr'
require_relative '../../color/log_palette'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcreatepalette
    class EMRCREATEPALETTE < FFIAdditions::Struct
      attr_accessor :emr, :ihPal, :lgpl

      layout emr:   EMR,
             ihPal: :dword,
             lgpl:  LOGPALETTE
    end
  end
end