require_relative '../../enum/opengl/pixel_format_descriptor_flag'
require_relative '../../enum/opengl/pixel_format_descriptor_pixel_type'
require_relative '../../enum/opengl/pixel_format_descriptor_layer_type'

module WinFFI
  module Gdi32
    # Pixel format descriptor
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-pixelformatdescriptor
    class PIXELFORMATDESCRIPTOR < FFIAdditions::Struct
      attr_accessor :nSize,
                    :nVersion,
                    :iPixelType,
                    :cColorBits,
                    :cRedBits,
                    :cRedShift,
                    :cGreenBits,
                    :cGreenShift,
                    :cBlueBits,
                    :cBlueShift,
                    :cAlphaBits,
                    :cAlphaShift,
                    :cAccumBits,
                    :cAccumRedBits,
                    :cAccumGreenBits,
                    :cAccumBlueBits,
                    :cAccumAlphaBits,
                    :cDepthBits,
                    :cStencilBits,
                    :cAuxBuffers,
                    :iLayerType,
                    :bReserved,
                    :dwLayerMask,
                    :dwVisibleMask,
                    :dwDamageMask

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