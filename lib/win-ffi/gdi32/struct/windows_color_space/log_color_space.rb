require 'win-ffi/gdi32/enum/windows_color_space/log_color_space_damut_mapping'

require 'win-ffi/gdi32/struct/windows_color_space/cie_xyz_triple'

require 'win-ffi/core/wide_inline_string'

module WinFFI
  module Gdi32
    class LOGCOLORSPACE < FFIAdditions::Struct
      layout lcsSignature:                       :dword,
             lcsVersion:                         :dword,
             lcsSize:                            :dword,
             lcsCSType:                        :pointer,
             lcsIntent:       LogColorSpaceDamutMapping,
             lcsEndpoints:                 CIEXYZTRIPLE,
             lcsGammaRed:                        :dword,
             lcsGammaGreen:                      :dword,
             lcsGammaBlue:                       :dword,
             lcsFilename: WideInlineString.new(MAX_PATH)
    end
  end
end