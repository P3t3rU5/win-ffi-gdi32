module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183574(v=vs.85).aspx
    DocInfoType = enum :doc_info_type, [:APPBANDING, 0x00000001,:ROPS_READ_DESTINATION, 0x00000002]

    define_prefix(:DI, DocInfoType)
  end
end