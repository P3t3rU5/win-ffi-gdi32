require_relative '../emr'
require_relative '../../color/log_palette'

module WinFFI
  module Gdi32
    def emr; end
    def emr=(v) end
    def ihPal; end
    def ihPal=(v) end
    def lgpl; end
    def lgpl=(v) end

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrcreatepalette
    class EMRCREATEPALETTE < FFIAdditions::Struct
      layout emr:   EMR,
             ihPal: :dword,
             lgpl:  LOGPALETTE
    end
  end
end