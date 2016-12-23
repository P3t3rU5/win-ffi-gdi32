require 'rspec'
require_relative '../test/test_helper'
require 'win-ffi/gdi32/function/brush'
require 'win-ffi/gdi32/macro/color'
require 'win-ffi/gdi32/function/path'
require 'win-ffi/gdi32/function/line_curve'
require 'win-ffi/gdi32/function/device_context'
require 'win-ffi/gdi32/function/pen'

$LOAD_PATH.unshift File.expand_path('../../win-ffi-user32/lib', __dir__)
require 'win-ffi/user32/function/device_context'

include WinFFI
include WinFFI::Gdi32

RSpec.describe 'Path' do
  describe '::AbortPath' do
    it 'closes and discards any paths in the specified device context' do
      expect(AbortPath(User32.GetDC(nil))).to be true
    end
  end

  describe '::BeginPath' do
    it 'opens a path bracket in the specified device context' do
      expect(BeginPath(User32.GetDC(nil))).to be true
    end
  end

  describe '::CloseFigure' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10,  POINT.new)
    LineTo(hdc, 10, 20)
    LineTo(hdc, 20, 20)

    it 'closes an open figure in a path' do
      expect(CloseFigure(hdc)).to be true
    end
  end

  describe '::EndPath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10,  POINT.new)
    LineTo(hdc, 10, 20)
    LineTo(hdc, 20, 20)

    it ' closes a path bracket and selects the path defined by the bracket into the specified device context' do
      expect(EndPath(hdc)).to be true
    end
  end

  describe '::FillPath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10, POINT.new)
    LineTo(hdc, 10, 90)
    LineTo(hdc, 90, 90)
    LineTo(hdc, 10, 10)
    EndPath(hdc)

    SelectObject(hdc, CreateSolidBrush(Gdi32.RGB(0, 255, 0)))

    it "closes any open figures in the current path and fills the path's interior by using the current brush and polygon-filling mode" do
      expect(FillPath(hdc)).to be true
    end
  end

  describe '::FlattenPath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    Arc(hdc, 10, 10, 20, 20, 10, 10, 20, 20)
    LineTo(hdc, 10, 10)
    EndPath(hdc)

    it 'transforms any curves in the path that is selected into the current device context, turning each curve into a sequence of lines' do
      expect(FlattenPath(hdc)).to be true
    end
  end

  describe '::GetMiterLimit' do
    it 'retrieves the miter limit for the specified device context' do
      FFI::MemoryPointer.new(:float).tap do |mp|
        expect(GetMiterLimit(User32.GetDC(nil), mp)).to be true
        expect(mp.read_float).to be_a Float
      end
    end
  end

  describe '::GetPath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10, POINT.new)
    LineTo(hdc, 10, 20)
    LineTo(hdc, 20, 20)
    LineTo(hdc, 10, 10)
    EndPath(hdc)
    path_point = nil

    it 'retrieves the number of points' do
      path_point = GetPath(hdc, nil, nil, 0)
      expect(path_point).to eq 4
    end

    it 'retieves the points and their corresponding types' do
      points = FFI::MemoryPointer.new(POINT, path_point)
      types = FFI::MemoryPointer.new(:uchar, path_point)
      expect(GetPath(hdc, points, types, path_point)).to eq 4
      expect(path_point.times.map { |idx| POINT.new(points + idx * POINT.size) }).to all be_a POINT
      expect(types.read_array_of_uchar(path_point).map { |type| PointType[type] }).to all be_a Symbol
    end
  end

  describe '::PathToRegion' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10, POINT.new)
    LineTo(hdc, 10, 20)
    LineTo(hdc, 20, 20)
    LineTo(hdc, 10, 10)
    EndPath(hdc)

    it 'creates a region from the path that is selected into the specified device context' do
      expect(PathToRegion(hdc)).not_to be FFI::MemoryPointer::NULL
    end
  end

  describe '::SetMiterLimit' do
    it ' sets the limit for the length of miter joins for the specified device context' do
      expect(SetMiterLimit(User32.GetDC(nil), 15, FFI::MemoryPointer.new(:float))).to be true
    end
  end

  describe '::StrokeAndFillPath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10, POINT.new)
    LineTo(hdc, 10, 100)
    LineTo(hdc, 100, 100)
    LineTo(hdc, 100, 80)
    LineTo(hdc, 50, 50)
    LineTo(hdc, 100, 20)
    LineTo(hdc, 100, 10)
    LineTo(hdc, 10, 10)
    EndPath(hdc)

    SelectObject(hdc, CreateSolidBrush(Gdi32.RGB(255, 0, 0)))
    SelectObject(hdc, CreatePen(:SOLID, 0, Gdi32.RGB(255, 0, 0)))

    it 'strokes the outline of the path by using the current pen, and fills its interior by using the current brush' do
      expect(StrokeAndFillPath(hdc)).to be true
    end
  end

  describe '::StrokePath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10, POINT.new)
    LineTo(hdc, 10, 30)
    LineTo(hdc, 20, 30)
    LineTo(hdc, 10, 10)
    EndPath(hdc)

    SelectObject(hdc, CreatePen(:SOLID, 2, Gdi32.RGB(0, 0, 255)))

    it 'renders the specified path by using the current pen' do
      expect(StrokePath(hdc)).to be true
    end
  end

  describe '::WidenPath' do
    hdc = User32.GetDC(nil)
    BeginPath(hdc)
    MoveToEx(hdc, 10, 10, POINT.new)
    LineTo(hdc, 10, 30)
    LineTo(hdc, 20, 30)
    LineTo(hdc, 10, 10)
    EndPath(hdc)

    it ' redefines the current path as the area that would be painted if the path were stroked using the pen currently selected into the given device context' do
      expect(WidenPath(hdc)).to be true
    end
  end

end