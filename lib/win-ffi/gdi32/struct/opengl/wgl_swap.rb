require_relative '../../enum/opengl/wgl_swap_layer_buffer'

module WinFFI
  module Gdi32
    # wglSwapLayerBuffers flags
    class WGLSWAP < FFIAdditions::Struct
      def hdc; end
      def hdc=(v); end
      def uiFlags; end
      def uiFlags=(v); end

      layout hdc:     :hdc,
             uiFlags: WglSwapLayerBuffer
    end
  end
end