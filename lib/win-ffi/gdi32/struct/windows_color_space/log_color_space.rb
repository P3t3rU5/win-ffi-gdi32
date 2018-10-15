require 'win-ffi/core/wide_inline_string'

require_relative '../../enum/windows_color_space/log_color_space_damut_mapping'

require_relative 'cie_xyz_triple'


module WinFFI
  module Gdi32
    typedef :long, :lcscstype
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taglogcolorspacea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taglogcolorspacew
    class LOGCOLORSPACE < FFIAdditions::Struct
      def lcsSignature; end
      def lcsSignature=(v) end
      def lcsVersion; end
      def lcsVersion=(v); end
      def lcsSize; end
      def lcsSize=(v); end
      def lcsCSType; end
      def lcsCSType=(v); end
      def lcsIntent; end
      def lcsIntent=(v); end
      def lcsEndpoints; end
      def lcsEndpoints=(v); end
      def lcsGammaRed; end
      def lcsGammaRed=(v); end
      def lcsGammaGreen; end
      def lcsGammaGreen=(v); end
      def lcsGammaBlue; end
      def lcsGammaBlue=(v); end
      def lcsFilename; end
      def lcsFilename=(v); end

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