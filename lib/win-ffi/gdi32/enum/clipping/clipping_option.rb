require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    LOGGER.warn('OC_BANK_CLIP option is Obsolete')
    ClippingOption = enum :clipping_option, [:BANK_CLIP, 1]

    define_prefix(:OC, ClippingOption)
  end
end