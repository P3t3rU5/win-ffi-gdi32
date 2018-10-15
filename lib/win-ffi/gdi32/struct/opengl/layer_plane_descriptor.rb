require_relative '../../enum/opengl/layer_plane_descriptor_flag'

module WinFFI
  module Gdi32
    # Layer plane descriptor
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taglayerplanedescriptor
    class LAYERPLANEDESCRIPTOR < FFIAdditions::Struct
      def nSize; end
      def nSize=(v); end
      def nVersion; end
      def nVersion=(v); end
      def dwFlags; end
      def dwFlags=(v); end
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
      def iLayerPlane; end
      def iLayerPlane=(v); end
      def bReserved; end
      def bReserved=(v); end
      def crTransparent; end
      def crTransparent=(v); end

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