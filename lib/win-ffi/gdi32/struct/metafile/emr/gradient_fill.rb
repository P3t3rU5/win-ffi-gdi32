require 'win-ffi/core/struct/rectl'

require_relative '../emr'
require_relative '../../bitmap/tri_vertex'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrgradientfill
    class EMRGRADIENTFILL < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :nVer, :nTri, :ulMode, :Ver

      layout emr:       EMR,
             rclBounds: RECTL, # Inclusive-inclusive bounds in device units
             nVer:      :dword,
             nTri:      :dword,
             ulMode:    :ulong,
             Ver:       [TRIVERTEX, 1]
    end
  end
end
