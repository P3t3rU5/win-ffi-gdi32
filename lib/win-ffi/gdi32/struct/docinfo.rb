require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class DOCINFO < FFIStruct
      layout :cbSize,       :int,
             :lpszDocName,  :string,
             :lpszOutput,   :string,
             :lpszDatatype, :string,
             :fwType,       :dword
    end
  end
end