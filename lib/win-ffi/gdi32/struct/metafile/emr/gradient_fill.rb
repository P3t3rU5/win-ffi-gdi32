require 'win-ffi/core/struct/rectl'

require_relative '../emr'
require_relative '../../bitmap/tri_vertex'

module WinFFI
  module Gdi32
    def emr; end
    def emr=(v); end
    def rclBounds; end
    def rclBounds=(v); end
    def nVer; end
    def nVer=(v); end
    def nTri; end
    def nTri=(v); end
    def ulMode; end
    def ulMode=(v); end
    def Ver; end
    def Ver=(v); end

        # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrgradientfill
    class EMRGRADIENTFILL < FFIAdditions::Struct
      layout emr:       EMR,
             rclBounds: RECTL, # Inclusive-inclusive bounds in device units
             nVer:      :dword,
             nTri:      :dword,
             ulMode:    :ulong,
             Ver:       [TRIVERTEX, 1]
    end
  end
end
