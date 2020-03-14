require_relative '../../enum/opengl/layer_plane_descriptor_flag'

module WinFFI
  module Gdi32
    # Layer plane descriptor
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-layerplanedescriptor
    class LAYERPLANEDESCRIPTOR < FFIAdditions::Struct
      attr_accessor :nSize,
                    :nVersion,
                    :dwFlags,
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
                    :iLayerPlane,
                    :bReserved,
                    :crTransparent

      layout nSize:           :word,
             nVersion:        :word,
             dwFlags:         LayerPlaneDescriptorFlag,
             iPixelType:      LayerPlaneDescriptorFlag,
             cColorBits:      :byte,
             cRedBits:        :byte,
             cRedShift:       :byte,
             cGreenBits:      :byte,
             cGreenShift:     :byte,
             cBlueBits:       :byte,
             cBlueShift:      :byte,
             cAlphaBits:      :byte,
             cAlphaShift:     :byte,
             cAccumBits:      :byte,
             cAccumRedBits:   :byte,
             cAccumGreenBits: :byte,
             cAccumBlueBits:  :byte,
             cAccumAlphaBits: :byte,
             cDepthBits:      :byte,
             cStencilBits:    :byte,
             cAuxBuffers:     :byte,
             iLayerPlane:     :byte,
             bReserved:       :byte,
             crTransparent:   :colorref

      def initialize
        super
        self.nSize = self.size
      end

      private :nSize, :nSize=
    end
  end
end