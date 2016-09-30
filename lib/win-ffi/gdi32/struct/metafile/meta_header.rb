require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145055(v=vs.85).aspx
    class METAHEADER < FFIAdditions::Struct
      layout mtType:         :word,
             mtHeaderSize:   :word,
             mtVersion:      :word,
             mtSize:        :dword,
             mtNoObjects:    :word,
             mtMaxRecord:   :dword,
             mtNoParameters: :word
    end
  end
end