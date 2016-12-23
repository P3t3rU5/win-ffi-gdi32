require 'rspec'
require_relative 'spec_helper'

require 'win-ffi/gdi32/function/bitmap'
require 'win-ffi/gdi32/function/brush'
require 'win-ffi/gdi32/function/device_context'
require 'win-ffi/gdi32/function/pen'
require 'win-ffi/gdi32/macro/color'

$LOAD_PATH.unshift File.expand_path('../../win-ffi-user32/lib', __dir__)
require 'win-ffi/user32/function/device_context'

require 'ffi-additions/array'

include WinFFI
include WinFFI::Gdi32

using WinFFI::StringUtils
using FFIAdditions::ArrayUtils

RSpec.describe 'Bitmap' do
  hdc = User32.GetDC(nil)
  red   = Gdi32.RGB(255, 0, 0)
  green = Gdi32.RGB(0, 255, 0)
  blue  = Gdi32.RGB(0, 0, 255)

  describe '::BitBlt' do
    it 'performs a bit-block transfer of the color data corresponding to a rectangle of pixels from the specified source device context into a destination device context' do
      expect(BitBlt(hdc, 10, 10, 50, 50, hdc, 60, 60, :DSTINVERT)).to be true
    end
  end

  describe '::CreateBitmap' do
    it 'creates a bitmap with the specified width, height, and color format (color planes and bits-per-pixel)' do
      expect(CreateBitmap(10, 10, 1, 1, nil)).to be_a FFI::Pointer
    end

    it 'can return ERROR_INVALID_BITMAP if the calculated size of the bitmap is less than zero' do
      expect(CreateBitmap(-1, -1, 1, 1, nil)).to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateBitmapIndirect' do
    it 'creates a bitmap with the specified width, height, and color format (color planes and bits-per-pixel)' do
      bitmap = BITMAP.new.tap do |bmp|
        bmp.bmType = 0
        bmp.bmWidth = 10
        bmp.bmHeight = 10
        bmp.bmWidthBytes = 10
        bmp.bmPlanes = 1
        bmp.bmBitsPixel = 1
        bmp.bmBits = nil
      end
      expect(CreateBitmapIndirect(bitmap)).to be_a FFI::Pointer
    end

    it 'fails' do
      bitmap = BITMAP.new.tap do |bmp|
        bmp.bmType = 0
        bmp.bmWidth = -1
        bmp.bmHeight = -1
        bmp.bmWidthBytes = 10
        bmp.bmPlanes = 1
        bmp.bmBitsPixel = 1
        bmp.bmBits = nil
      end
      expect(CreateBitmapIndirect(bitmap)).to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateCompatibleBitmap' do
    it 'creates a bitmap compatible with the device that is associated with the specified device context' do
      expect(CreateCompatibleBitmap(hdc, 10, 10)).to be_a FFI::Pointer
    end

    it 'fails' do
      expect(CreateCompatibleBitmap(hdc, -10, -10)).to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateDIBitmap' do
    it 'creates a compatible bitmap (DDB) from a DIB and, optionally, sets the bitmap bits' do
      bitmap_info_header = BITMAPV5HEADER.new.tap do |bih|
        bih.bV5Width = 10
        bih.bV5Height = 10
        bih.bV5Planes = 1
        bih.bV5BitCount = 8
      end

      bitmap_info = BITMAPINFO.new.tap do |bmpi|
        bmpi.bmiColors.rgbBlue = 1
      end
      expect(CreateDIBitmap(hdc, bitmap_info_header, :INIT, nil, bitmap_info, :RGB_COLORS)).not_to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateDIBSection' do
    it 'fails if ppvBits is NULL.' do
      expect(CreateDIBSection(hdc, BITMAPINFO.new, :RGB_COLORS, nil, nil, 0)).to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateDiscardableBitmap' do
    it 'creates a discardable bitmap that is compatible with the specified device' do
      hbitmap = CreateDiscardableBitmap(hdc, 40, 40)
      expect(hbitmap).to be_a FFI::Pointer
      expect(hbitmap).not_to eq FFI::MemoryPointer::NULL
    end

    it 'fails' do
      expect(CreateDiscardableBitmap(hdc, -40, -40)).to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::ExtFloodFill' do
    it 'fills an area of the display surface with the current brush' do
      SelectObject(hdc, CreateSolidBrush(red))
      SelectObject(hdc, CreatePen(:SOLID, 0, green))

      expect(ExtFloodFill(hdc, 20, 20, blue, :BORDER)).to be true
    end
  end

  describe '::FloodFill' do
    it 'fills an area of the display surface with the current brush' do
      expect(FloodFill(hdc, 20, 20, blue)).to be true
    end
  end

  describe '::GdiAlphaBlend' do
    it 'displays bitmaps that have transparent or semitransparent pixels' do
      # SelectObject(hdc, CreateCompatibleBitmap(hdc, 100, 100))
      #
      # expect(GdiAlphaBlend(hdc, 60, 60, 100, 100, hdc, 160, 160, 100, 100, BLENDFUNCTION.new.tap do |bf|
      #   bf.BlendOp = :OVER
      #   bf.SourceConstantAlpha = 150
      #   bf.AlphaFormat = 0
      # end)).to be true
      # TODO
      raise NotImplementedError
    end
  end

  describe '::GdiGradientFill' do
    it 'fills rectangle and triangle structures' do
      # buffer = FFI::MemoryPointer.new(TRIVERTEX, 3)
      # tvx = Array.from_pointer_of(TRIVERTEX, buffer, 3)
      # tvx[0].x = 10
      # tvx[0].y = 10
      # tvx[0].Red = 0
      # tvx[0].Blue = 255
      # tvx[0].Green = 0
      # tvx[0].Alpha = 150
      #
      # tvx[1].x = 100
      # tvx[1].y = 100
      # tvx[1].Red = 255
      # tvx[1].Blue = 255
      # tvx[1].Green = 0
      # tvx[1].Alpha = 150
      #
      # tvx[2].x = 200
      # tvx[2].y = 200
      # tvx[2].Red = 0
      # tvx[2].Blue = 0
      # tvx[2].Green = 255
      # tvx[2].Alpha = 150
      #
      # mesh = FFI::MemoryPointer.new(GRADIENT_TRIANGLE)
      #
      # GRADIENT_TRIANGLE.new(mesh).tap do |gt|
      #   gt.Vertex1 = 0
      #   gt.Vertex2 = 1
      #   gt.Vertex3 = 2
      # end
      #
      # expect(GdiGradientFill(hdc, buffer, 3, mesh, 1, :TRIANGLE)).to be true
      # TODO
      raise NotImplementedError
    end
  end

  describe '::GdiTransparentBlt' do
    it 'performs a bit-block transfer of the color data corresponding to a rectangle of pixels from the specified source device context into a destination device context' do
      expect(GdiTransparentBlt(hdc, 10, 10, 100, 100, hdc, 200, 200, 100, 100, red)).to be true
    end
  end

  describe '::GetBitmapBits' do
    it 'copies the bitmap bits of a specified device-dependent bitmap into a buffer' do
      buffer = FFI::MemoryPointer.new(:uchar, 20)
      expect(GetBitmapBits(CreateCompatibleBitmap(hdc, 100, 100), 20, buffer)).not_to be_zero
    end
  end

  describe '::GetBitmapDimensionEx' do
    it 'retrieves the dimensions of a compatible bitmap' do
      size = SIZE.new
      bitmap = CreateCompatibleBitmap(hdc, 100, 100)
      SetBitmapDimensionEx(bitmap, 100, 100, nil)
      expect(GetBitmapDimensionEx(bitmap, size)).to be true

      expect(size.x).to eq 100
      expect(size.y).to eq 100
    end
  end

  describe '::GetDIBColorTable' do
    it 'retrieves RGB (red, green, blue) color values from a range of entries in the color table of the DIB section bitmap that is currently selected into a specified device context' do
      # bitmap_info_header = BITMAPV5HEADER.new.tap do |bih|
      #   bih.bV5Width = 10
      #   bih.bV5Height = 10
      #   bih.bV5Planes = 1
      #   bih.bV5BitCount = 8
      # end
      #
      # bitmap_info = BITMAPINFO.new.tap do |bmpi|
      #   bmpi.bmiColors.rgbBlue = 1
      # end
      #
      # SelectObject(hdc, CreateDIBitmap(hdc, bitmap_info_header, :INIT, nil, bitmap_info, :RGB_COLORS))
      #
      # buffer = FFI::MemoryPointer.new(RGBQUAD, 10)
      # Array.from_pointer_of(RGBQUAD, buffer, 10)
      #
      # expect(GetDIBColorTable(hdc, 0, 10, buffer)).to eq 10
      # TODO
      raise NotImplementedError
    end
  end

  describe '::GetDIBits' do
    it 'retrieves the bits of the specified compatible bitmap and copies them into a buffer as a DIB using the specified format' do
      # GetDIBits(hdc, CreateCompatibleBitmap(hdc, 100, 100), 0, 10, )

      # TODO
      raise NotImplementedError
    end
  end

  describe '::GetPixel' do
    it 'retrieves the red, green, blue (RGB) color value of the pixel at the specified coordinates' do
      expect(GetPixel(hdc, 10, 10)).to be_a Numeric
    end
  end

  describe '::GetStretchBltMode' do
    it 'retrieves the current stretching mode' do
      expect(Stretch[GetStretchBltMode(hdc)]).to be_a Symbol
    end
  end

  describe '::MaskBlt' do
    it 'combines the color data for the source and destination bitmaps using the specified mask and raster operation' do
      expect(MaskBlt(hdc, 10, 10, 100, 100, hdc, 300, 300, nil, 0, 0, :SRCCOPY)).to be true
    end
  end

  describe '::PlgBlt' do
    it 'performs a bit-block transfer of the bits of color data from the specified rectangle in the source device context to the specified parallelogram in the destination device context' do
      buffer = FFI::MemoryPointer.new(POINT, 3)

      points = Array.from_pointer_of(POINT, buffer, 3)
      points[0].x = 10
      points[0].y = 10
      points[1].x = 30
      points[1].y = 30
      points[2].x = 10
      points[2].y = 30

      expect(PlgBlt(hdc, buffer, hdc, 300, 300, 30, 30, nil, 0, 0)).to be true
    end
  end

  describe '::SetBitmapBits' do
    it 'sets the bits of color data for a bitmap to the specified values' do
      expect(SetBitmapBits(CreateCompatibleBitmap(hdc, 100, 100), 10, FFI::MemoryPointer.new(:uchar, 10))).to eq 10
    end
  end

  describe '::SetBitmapDimensionEx' do
    it 'assigns preferred dimensions to a bitmap' do
      size = SIZE.new
      bitmap = CreateCompatibleBitmap(hdc, 100, 100)
      expect(SetBitmapDimensionEx(bitmap, 100, 100, size)).to be true
      expect(size.x).to eq 0
      expect(size.y).to eq 0
      expect(SetBitmapDimensionEx(bitmap, 150, 150, size)).to be true
      expect(size.x).to eq 100
      expect(size.y).to eq 100
    end
  end

  describe '::SetDIBColorTable' do
    it ' sets RGB (red, green, blue) color values in a range of entries in the color table of the DIB that is currently selected into a specified device context' do
      # SelectObject(hdc, CreateCompatibleBitmap(hdc, 100, 100))
      # expect(SetDIBColorTable(hdc, 0, 1, RGBQUAD.new)).to eq 1

      # TODO
      raise NotImplementedError
    end
  end

  describe '::SetDIBits' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::SetDIBitsToDevice' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::SetPixel' do
    it 'sets the pixel at the specified coordinates to the specified color' do
      30.times do |x|
        30.times do |y|
          expect(SetPixel(hdc, x, y, blue)).to be_a Numeric
        end
      end
    end

    it 'fails' do
      expect(SetPixel(hdc, -1, -1, blue)).to eq 0xffffffff
    end
  end

  describe '::SetPixelV' do
    it 'sets the pixel at the specified coordinates to the closest approximation of the specified color' do
      30.upto 60 do |x|
        30.times do |y|
          expect(SetPixelV(hdc, x, y, green)).to be true
        end
      end
    end
  end

  describe '::SetStretchBltMode' do
    it 'sets the bitmap stretching mode in the specified device context' do
      expect(Stretch[SetStretchBltMode(hdc, :DELETESCANS)]).to be_a Symbol
    end
  end

  describe '::StretchBlt' do
    it 'copies a bitmap from a source rectangle into a destination rectangle, stretching or compressing the bitmap to fit the dimensions of the destination rectangle, if necessary' do
      expect(StretchBlt(hdc, 0, 30, 30, 30, hdc, 0, 0, 30, 30, :SRCCOPY)).to be true
    end
  end

  describe '::StretchDIBits' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end
end