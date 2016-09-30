require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183376(v=vs.85).aspx
    class BITMAPINFOHEADER < FFIAdditions::Struct
      layout biSize:         :dword,
             biWidth:         :long,
             biHeight:        :long,
             biPlanes:        :word,
             biBitCount:      :word,
             biCompression:  :dword,
             biSizeImage:    :dword,
             biXPelsPerMeter: :long,
             biYPelsPerMeter: :long,
             biClrUsed:      :dword,
             biClrImportant: :dword
    end
  end
end