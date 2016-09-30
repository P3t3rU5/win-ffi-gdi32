require 'win-ffi/gdi32'

require 'win-ffi/gdi32/enum/opengl/pixel_format_descriptor_flag'
require 'win-ffi/gdi32/enum/opengl/pixel_format_descriptor_pixel_type'
require 'win-ffi/gdi32/enum/opengl/pixel_format_descriptor_layer_type'


module WinFFI
  module Gdi32
    # Pixel format descriptor
    class PIXELFORMATDESCRIPTOR < FFIAdditions::Struct
      layout nSize:                             :ushort,
             nVersion:                          :ushort,
             dwFlags:         PixelFormatDescriptorFlag,
             iPixelType: PixelFormatDescriptorPixelType,
             cColorBits:                          :char,
             cRedBits:                            :char,
             cRedShift:                           :char,
             cGreenBits:                          :char,
             cGreenShift:                         :char,
             cBlueBits:                           :char,
             cBlueShift:                          :char,
             cAlphaBits:                          :char,
             cAlphaShift:                         :char,
             cAccumBits:                          :char,
             cAccumRedBits:                       :char,
             cAccumGreenBits:                     :char,
             cAccumBlueBits:                      :char,
             cAccumAlphaBits:                     :char,
             cDepthBits:                          :char,
             cStencilBits:                        :char,
             cAuxBuffers:                         :char,
             iLayerType: PixelFormatDescriptorLayerType,
             bReserved:                           :char,
             dwLayerMask:                         :uint,
             dwVisibleMask:                       :uint,
             dwDamageMask:                        :uint

      #TODO
      #undef_method :nSize=

      def initialize
        super
        self.nSize = self.size
      end

      def dwFlags
        val = self[:dwFlags]
        flags = []
        PixelFormatDescriptorFlag.to_hash.each do |k, v|
          flags << k if val & v != 0
        end
        Set.new(flags)
      end

      def dwFlags=(flags)
        self[:dwFlags] = [*flags].reduce(0) {|a,f| a | PixelFormatDescriptorFlag[f].to_i}
      end

      def to_s
        [:iPixelType, :cColorBits, :cAccumBits, :cDepthBits, :iLayerType, :dwFlags].map{|n| "#{n} = #{send(n).inspect}"}.join(', ')
      end
    end
  end
end