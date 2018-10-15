module WinFFI
  module Gdi32
    # pixel types
    PixelFormatDescriptorPixelType = enum :pixel_format_descriptor_pixel_type, [:RGBA, :COLORINDEX]

    define_prefix(:PFD_TYPE, PixelFormatDescriptorPixelType)
  end
end