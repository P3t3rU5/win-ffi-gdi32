require 'win-ffi/gdi32'

require 'win-ffi/gdi32/enum/opengl/layer_plane_descriptor_flag'

module WinFFI
  module Gdi32
    # Layer plane descriptor
    # https://msdn.microsoft.com/en-us/library/dd374244(v=vs.85).aspx
    class LAYERPLANEDESCRIPTOR < FFIAdditions::Struct
      layout nSize:                         :word,
             nVersion:                      :word,
             dwFlags:    LayerPlaneDescriptorFlag,
             iPixelType: LayerPlaneDescriptorFlag,
             cColorBits:                    :byte,
             cRedBits:                      :byte,
             cRedShift:                     :byte,
             cGreenBits:                    :byte,
             cGreenShift:                   :byte,
             cBlueBits:                     :byte,
             cBlueShift:                    :byte,
             cAlphaBits:                    :byte,
             cAlphaShift:                   :byte,
             cAccumBits:                    :byte,
             cAccumRedBits:                 :byte,
             cAccumGreenBits:               :byte,
             cAccumBlueBits:                :byte,
             cAccumAlphaBits:               :byte,
             cDepthBits:                    :byte,
             cStencilBits:                  :byte,
             cAuxBuffers:                   :byte,
             iLayerPlane:                   :byte,
             bReserved:                     :byte,
             crTransparent:             :colorref

      def initialize
        super
        self[:nSize] = self.size
      end
    end
  end
end