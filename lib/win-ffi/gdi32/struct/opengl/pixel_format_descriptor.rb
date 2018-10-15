require_relative '../../enum/opengl/pixel_format_descriptor_flag'
require_relative '../../enum/opengl/pixel_format_descriptor_pixel_type'
require_relative '../../enum/opengl/pixel_format_descriptor_layer_type'

module WinFFI
  module Gdi32
    # Pixel format descriptor
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagpixelformatdescriptor
    class PIXELFORMATDESCRIPTOR < FFIAdditions::Struct
      def nSize; end
      def nSize=(v); end
      def nVersion; end
      def nVersion=(v); end
      def iPixelType; end
      def iPixelType=(v); end
      def cColorBits; end
      def cColorBits=(v); end
      def cRedBits; end
      def cRedBits=(v); end
      def cRedShift; end
      def cRedShift=(v); end
      def cGreenBits; end
      def cGreenBits=(v); end
      def cGreenShift; end
      def cGreenShift=(v); end
      def cBlueBits; end
      def cBlueBits=(v); end
      def cBlueShift; end
      def cBlueShift=(v); end
      def cAlphaBits; end
      def cAlphaBits=(v); end
      def cAlphaShift; end
      def cAlphaShift=(v); end
      def cAccumBits; end
      def cAccumBits=(v); end
      def cAccumRedBits; end
      def cAccumRedBits=(v); end
      def cAccumGreenBits; end
      def cAccumGreenBits=(v); end
      def cAccumBlueBits; end
      def cAccumBlueBits=(v); end
      def cAccumAlphaBits; end
      def cAccumAlphaBits=(v); end
      def cDepthBits; end
      def cDepthBits=(v); end
      def cStencilBits; end
      def cStencilBits=(v); end
      def cAuxBuffers; end
      def cAuxBuffers=(v); end
      def iLayerType; end
      def iLayerType=(v); end
      def bReserved; end
      def bReserved=(v); end
      def dwLayerMask; end
      def dwLayerMask=(v); end
      def dwVisibleMask; end
      def dwVisibleMask=(v); end
      def dwDamageMask; end
      def dwDamageMask=(v); end

      layout nSize:           :ushort,
             nVersion:        :ushort,
             dwFlags:         PixelFormatDescriptorFlag,
             iPixelType:      PixelFormatDescriptorPixelType,
             cColorBits:      :char,
             cRedBits:        :char,
             cRedShift:       :char,
             cGreenBits:      :char,
             cGreenShift:     :char,
             cBlueBits:       :char,
             cBlueShift:      :char,
             cAlphaBits:      :char,
             cAlphaShift:     :char,
             cAccumBits:      :char,
             cAccumRedBits:   :char,
             cAccumGreenBits: :char,
             cAccumBlueBits:  :char,
             cAccumAlphaBits: :char,
             cDepthBits:      :char,
             cStencilBits:    :char,
             cAuxBuffers:     :char,
             iLayerType:      PixelFormatDescriptorLayerType,
             bReserved:       :char,
             dwLayerMask:     :uint,
             dwVisibleMask:   :uint,
             dwDamageMask:    :uint

      #TODO
      #undef_method :nSize=

      def initialize
        super
        self.nSize = self.size
      end

      def dwFlags
        val = self[:dwFlags]
        flags = PixelFormatDescriptorFlag.to_hash.select { |k, v| val & v != 0 }.map(&:first)
        Set.new(flags)
      end

      def dwFlags=(flags)
        self[:dwFlags] = [*flags].reduce(0) {|a,f| a | PixelFormatDescriptorFlag[f].to_i}
      end

      def to_s
        [:iPixelType, :cColorBits, :cAccumBits, :cDepthBits, :iLayerType, :dwFlags].map{|n| "#{n} = #{send(n).inspect}"}.join(', ')
      end

      private :nSize, :nSize=
    end
  end
end