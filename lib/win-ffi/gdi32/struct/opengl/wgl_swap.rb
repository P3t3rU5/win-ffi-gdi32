require_relative '../../enum/opengl/wgl_swap_layer_buffer'

module WinFFI
  module Gdi32
    # wglSwapLayerBuffers flags
    class WGLSWAP < FFIAdditions::Struct
      attr_accessor :hdc, :uiFlags

      layout hdc:     :hdc,
             uiFlags: WglSwapLayerBuffer
    end
  end
end