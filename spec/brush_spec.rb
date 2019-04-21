require_relative 'spec_helper'

require_relative '../lib/win-ffi/gdi32/function/brush'
require_relative '../lib/win-ffi/gdi32/macro/color'

require 'win-ffi/user32/function/device_context'

include WinFFI
include WinFFI::Gdi32

RSpec.describe 'Brush' do
  HBRUSH = WinFFI.find_type(:hbrush)
  describe 'CreateBrushIndirect' do
    it 'creates a brush from a LOGBRUSH struct' do
      expect(CreateBrushIndirect(
          LOGBRUSH.new.tap do |lg|
            lg.lbStyle = :SOLID
            lg.lbColor = Gdi32.RGB(255, 0, 0)
            lg.lbHatch = :BDIAGONAL
          end)).to be_a FFI::Pointer
    end
  end

  describe 'CreateDIBPatternBrush' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe 'CreateDIBPatternBrushPt' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe 'CreateHatchBrush' do
    it 'creates a hatch brush' do
      expect(CreateHatchBrush(:BDIAGONAL, Gdi32.RGB(255, 0, 0))).to be_a FFI::Pointer
    end
  end

  describe 'CreatePatternBrush' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe 'CreateSolidBrush' do
    it 'creates a solid brush' do
      expect(CreateSolidBrush(Gdi32.RGB(255, 0, 0))).to be_a FFI::Pointer
    end
  end

  describe 'GetBrushOrgEx' do
    it '' do
      expect(GetBrushOrgEx(User32.GetDC(nil), POINT.new(10, 10))).to be true
    end
  end

  describe 'PatBlt' do
    it 'paints the specified rectangle using the brush that is currently selected into the specified device context' do
      expect(PatBlt(User32.GetDC(nil), 1, 1, 1500, 800, :DSTINVERT)).to be true
    end
  end

  describe 'SetBrushOrgEx' do
    it 'sets the brush origin that GDI assigns to the next brush an application selects into the specified device context' do
      expect(SetBrushOrgEx(User32.GetDC(nil), 2, 2, POINT.new(10, 10))).to be true
    end
  end
end