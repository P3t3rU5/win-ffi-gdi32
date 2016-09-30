require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Mapping Modes
    MappingMode = enum :mapping_mode, [
        :TEXT,        1,
        :LOMETRIC,    2,
        :HIMETRIC,    3,
        :LOENGLISH,   4,
        :HIENGLISH,   5,
        :TWIPS,       6,
        :ISOTROPIC,   7,
        :ANISOTROPIC, 8,

        # Min and Max Mapping Mode values
        :MIN,            1,
        :MAX,            8,
        :MAX_FIXEDSCALE, 6
    ]

    define_prefix(:MM, MappingMode)
  end
end