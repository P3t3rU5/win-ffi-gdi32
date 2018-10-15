require_relative '../../enum/bitmap/compression'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183376(v=vs.85).aspx
    class BITMAPINFOHEADER < FFIAdditions::Struct
      def biSize; end
      def biSize=(v) end
      def biWidth; end
      def biWidth=(v) end
      def biHeight; end
      def biHeight=(v) end
      def biPlanes; end
      def biPlanes=(v) end
      def biBitCount; end
      def biBitCount=(v) end
      def biCompression; end
      def biCompression=(v) end
      def biSizeImage; end
      def biSizeImage=(v) end
      def biXPelsPerMeter; end
      def biXPelsPerMeter=(v) end
      def biYPelsPerMeter; end
      def biYPelsPerMeter=(v) end
      def biClrUsed; end
      def biClrUsed=(v) end
      def biClrImportant; end
      def biClrImportant=(v) end

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