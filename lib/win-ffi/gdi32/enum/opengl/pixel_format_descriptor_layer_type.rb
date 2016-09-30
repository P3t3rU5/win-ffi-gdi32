require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # layer types
    PixelFormatDescriptorLayerType = enum :pixel_format_descriptor_layer_type, [
        :MAIN_PLANE, 0, :OVERLAY_PLANE, 1, :UNDERLAY_PLANE, -1
    ]

    define_prefix(:PFD, PixelFormatDescriptorLayerType)
  end
end