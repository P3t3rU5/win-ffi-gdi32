require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    DocInfoType = enum :doc_info_type, [
        :APPBANDING,            0x00000001,
        :ROPS_READ_DESTINATION, 0x00000002,
    ]

    define_prefix(:DI, DocInfoType)
  end
end