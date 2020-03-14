require 'win-ffi/core/wide_inline_string'

require_relative '../../enum/windows_color_space/log_color_space_damut_mapping'

require_relative 'cie_xyz_triple'


module WinFFI
  module Gdi32
    typedef :long, :lcscstype
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-logcolorspacea
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-logcolorspacew
    class LOGCOLORSPACE < FFIAdditions::Struct
      attr_accessor :lcsSignature,
                    :lcsVersion,
                    :lcsSize,
                    :lcsCSType,
                    :lcsIntent,
                    :lcsEndpoints,
                    :lcsGammaRed,
                    :lcsGammaGreen,
                    :lcsGammaBlue,
                    :lcsFilename

      layout lcsSignature:  :dword,
             lcsVersion:    :dword,
             lcsSize:       :dword,
             lcsCSType:     :lcscstype,
             lcsIntent:     LogColorSpaceGamutMapping,
             lcsEndpoints:  CIEXYZTRIPLE,
             lcsGammaRed:   :dword,
             lcsGammaGreen: :dword,
             lcsGammaBlue:  :dword,
             lcsFilename:   WideInlineString.new(MAX_PATH)
    end
  end
end