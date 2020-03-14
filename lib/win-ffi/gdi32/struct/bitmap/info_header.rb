require_relative '../../enum/bitmap/compression'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmapinfoheader
    class BITMAPINFOHEADER < FFIAdditions::Struct
      attr_accessor :biSize,
                    :biWidth,
                    :biHeight,
                    :biPlanes,
                    :biBitCount,
                    :biCompression,
                    :biSizeImage,
                    :biXPelsPerMeter,
                    :biYPelsPerMeter,
                    :biClrUsed,
                    :biClrImportant

      layout biSize:          :dword,
             biWidth:         :long,
             biHeight:        :long,
             biPlanes:        :word,
             biBitCount:      :word,
             biCompression:   BitmapCompression,
             biSizeImage:     :dword,
             biXPelsPerMeter: :long,
             biYPelsPerMeter: :long,
             biClrUsed:       :dword,
             biClrImportant:  :dword
    end
  end
end