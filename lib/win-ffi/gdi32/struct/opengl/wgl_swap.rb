require 'win-ffi/gdi32/enum/opengl/wgl_swap_layer_buffer'

module WinFFI
  module Gdi32
    # wglSwapLayerBuffers flags
    class WGLSWAP < FFIAdditions::Struct
      layout hdc:                   :hdc,
             uiFlags: WglSwapLayerBuffer
    end
  end
end