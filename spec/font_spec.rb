require_relative 'spec_helper'

require 'win-ffi/core/macro/util'

require_relative '../lib/win-ffi/gdi32/constant'
require_relative '../lib/win-ffi/gdi32/macro/color'
require_relative '../lib/win-ffi/gdi32/function/font'
require_relative '../lib/win-ffi/gdi32/function/device_context'

# $LOAD_PATH.unshift File.expand_path('../../win-ffi-user32/lib', __dir__)
require 'win-ffi/user32/function/device_context'

$LOAD_PATH.unshift File.expand_path('../../win-ffi-kernel32/lib', __dir__)
require 'win-ffi/kernel32/function/error'

include WinFFI
include WinFFI::Gdi32
$LOAD_PATH.unshift File.expand_path('../../../ffi-additions/lib', __dir__)
require 'ffi-additions/array'
require 'ffi-additions/struct'

using FFIAdditions::ArrayUtils
using WinFFI::StringUtils

def enum_font_proc_fam(lplf, _, _, _)
  LOGGER.info "#{lplf.family} -> #{lplf.font.lfCharSet}"
  1
end

def enum_font_ex_proc(lplf, _, _, _)
  LOGGER.info "#{lplf.face_name} -> #{lplf.lfCharSet}"
  1
end

def enum_font_proc(lplf, _, _, _)
  LOGGER.info "#{lplf.family} -> #{lplf.style}"
  1
end

RSpec.describe 'Font' do
  hdc = User32.GetDC(nil)
  file_path = 'spec\\Roboto-Regular.ttf'.to_w
  # file_path = 'D:\\users\\pedro\\projects\\ruby\\win-ffi-gdi32\\spec\\Roboto-Regular.ttf'.to_w
  file_name = 'Roboto-Regular.ttf'.to_w
  path = 'E:\\users\\Pedro\\projects\\ruby\\win-ffi\\win-ffi-gdi32\\specs\\'.to_w

  describe '::AddFontMemResourceEx' do
    it '' do
      # TODO
      # font = FFI::MemoryPointer(:pointer)
      # AddFontMemResourceEx(font, ,0 , )
      raise NotImplementedError
    end
  end

  describe '::AddFontResource' do
    it 'adds the font resource from the specified file to the system font table' do
      expect(AddFontResource(file_path)).not_to be_zero
    end
  end

  describe '::AddFontResourceEx' do
    it 'adds the font resource that can be marked as private and not enumerable' do
      expect(AddFontResourceEx(file_path, :PRIVATE, nil)).not_to be_zero
    end
  end

  describe '::CreateFont' do
    it 'creates a logical font with the specified characteristics' do
      expect(CreateFont(10, 0, 0, 0, :DONTCARE, 0, 0, 0, :ANSI, :TT, :DEFAULT, :CLEARTYPE_NATURAL, :DEFAULT,
                        'arial'.to_w)).not_to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateFontIndirect' do
    it '' do
      expect(CreateFontIndirect(LOGFONT.new.tap do |lf|
        lf.lfHeight = 10
        lf.lfWidth = 0
        lf.lfEscapement = 0
        lf.lfOrientation = 0
        lf.lfWeight = :DONTCARE
        lf.lfItalic = 0
        lf.lfUnderline = 0
        lf.lfStrikeOut = 0
        lf.lfCharSet = :ANSI
        lf.lfOutPrecision = :TT
        lf.lfClipPrecision = :DEFAULT
        lf.lfQuality = :CLEARTYPE_NATURAL
        lf.lfPitchAndFamily = FontPitch[:DEFAULT]
        lf.lfFaceName = 'arial'
      end)).not_to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateFontIndirectEx' do
    it 'specifies a logical font that has the characteristics in the specified structure' do
      expect(CreateFontIndirectEx(ENUMLOGFONTEXDV.new.tap do |elf|
        elf.elfEnumLogfontEx = ENUMLOGFONTEX.new.tap do |elf2|
          elf2.elfLogFont = LOGFONT.new.tap do |lf|
            lf.lfHeight = 10
            lf.lfWidth = 0
            lf.lfEscapement = 0
            lf.lfOrientation = 0
            lf.lfWeight = :DONTCARE
            lf.lfItalic = 0
            lf.lfUnderline = 0
            lf.lfStrikeOut = 0
            lf.lfCharSet = :ANSI
            lf.lfOutPrecision = :TT
            lf.lfClipPrecision = :DEFAULT
            lf.lfQuality = :CLEARTYPE_NATURAL
            lf.lfPitchAndFamily = FontPitch[:DEFAULT]
            lf.lfFaceName = 'arial'
          end
          elf2.elfFullName = 'Arial'
          elf2.elfStyle    = 'Regular'
          elf2.elfScript   = 'ANSI'
        end
        elf.elfDesignVector = DESIGNVECTOR.new.tap do |dv|
          dv.dvReserved = STAMP_DESIGNVECTOR
          dv.dvNumAxes  = 0
          # dv.dvValues
        end
      end)).not_to eq FFI::MemoryPointer::NULL
    end
  end

  describe '::CreateScalableFontResource' do
    it 'creates a font resource file for a scalable font' do
      expect(CreateScalableFontResource(0, 'Roboto.fot'.to_w, file_path, nil)).to be true
      File.delete(path.to_utf8 + 'Roboto.fot')
    end

    it 'creates a font resource file for a scalable font' do
      expect(CreateScalableFontResource(0, 'Roboto2.fot'.to_w, file_name, path)).to be true
      File.delete(path.to_utf8 + 'Roboto2.fot')
    end
  end

  describe '::EnableEUDC' do
    it 'enablessupport for end-user-defined characters (EUDC)' do
      expect(EnableEUDC(true)).to be true
    end

    it 'disables support for end-user-defined characters (EUDC)' do
      expect(EnableEUDC(false)).to be true
    end
  end

  describe '::EnumFontFamilies' do
    it 'enumerates the fonts in a specified font family that are available on a specified device' do
      expect(EnumFontFamilies(hdc, 'arial'.to_w, method(:enum_font_proc_fam), 0)).to eq 1
    end
  end

  describe '::EnumFontFamiliesEx' do
    it 'enumerates all uniquely-named fonts in the system that match the font characteristics specified by the LOGFONT structure' do
      expect(EnumFontFamiliesEx(hdc, LOGFONT.new.tap do |lf|
        lf.lfCharSet = :DEFAULT
        lf.lfFaceName = ''
        lf.lfPitchAndFamily  = 0
      end, method(:enum_font_ex_proc),0, 0)).to eq 1
    end
  end

  describe '::EnumFonts' do
    it 'enumerates the fonts available on a specified device' do
      expect(EnumFonts(hdc, 'arial'.to_w, method(:enum_font_proc), 0)).to eq 1
    end
  end

  describe '::ExtTextOut' do
    it 'draws font using the currently selected font, background color, and font color' do
      font = CreateFont(10, 0, 0, 0, :DONTCARE, 0, 0, 0, :ANSI, :TT, :DEFAULT, :CLEARTYPE_NATURAL, :DEFAULT,
                 'arial'.to_w)

      SelectObject(hdc, font)

      expect(ExtTextOut(hdc, 10, 10, :CLIPPED, RECT.new.tap do |r|
        r.left = 10
        r.top = 10
        r.right = 100
        r.bottom = 60
      end, 'hello'.to_w, 5, nil)).to be true
    end
  end

  describe '::GetAspectRatioFilterEx' do
    it 'retrieves the setting for the current aspect-ratio filter' do
      size = SIZE.new
      expect(GetAspectRatioFilterEx(hdc, size)).to be true
      LOGGER.info size.to_s
    end
  end

  describe '::GetCharABCWidths' do
    it 'retrieves the widths, in logical units, of consecutive characters in a specified range from the current TrueType font' do
      abc = FFI::MemoryPointer.new(ABC, 2)
      expect(GetCharABCWidths(hdc, 97, 98, abc)).to be true
      abc1 = ABC.new(abc)
      abc2 = ABC.new(abc + ABC.size)
      LOGGER.info "#{abc1.abcA} #{abc1.abcB} #{abc1.abcC}"
      LOGGER.info "#{abc2.abcA} #{abc2.abcB} #{abc2.abcC}"
    end
  end

  describe '::GetCharABCWidthsFloat' do
    it 'retrieves the widths, in logical units, of consecutive characters in a specified range from the current font' do
      abc = FFI::MemoryPointer.new(ABCFLOAT, 2)
      expect(GetCharABCWidthsFloat(hdc, 97, 98, abc)).to be true
      abc1 = ABCFLOAT.new(abc)
      abc2 = ABCFLOAT.new(abc + ABC.size)
      LOGGER.info "#{abc1.abcfA} #{abc1.abcfB} #{abc1.abcfC}"
      LOGGER.info "#{abc2.abcfA} #{abc2.abcfB} #{abc2.abcfC}"
    end
  end

  describe '::GetCharABCWidthsI' do
    it 'retrieves the widths, in logical units, of consecutive glyph indices in a specified range from the current TrueType font' do
      abc = FFI::MemoryPointer.new(ABC, 2)
      expect(GetCharABCWidthsI(hdc, 97, 2, nil, abc)).to be true
      abc1 = ABC.new(abc)
      abc2 = ABC.new(abc + ABC.size)
      LOGGER.info "#{abc1.abcA} #{abc1.abcB} #{abc1.abcC}"
      LOGGER.info "#{abc2.abcA} #{abc2.abcB} #{abc2.abcC}"
    end

    it 'retrieves the widths, in logical units, of consecutive glyph indices in a specified range from the current TrueType font' do
      abc = FFI::MemoryPointer.new(ABC, 2)
      glyphs = FFI::MemoryPointer.new(:uint16, 2)
      glyphs.write_array_of_uint16([97, 98])
      expect(GetCharABCWidthsI(hdc, 0, 2, glyphs, abc)).to be true
      abc1 = ABC.new(abc)
      abc2 = ABC.new(abc + ABC.size)
      LOGGER.info "#{abc1.abcA} #{abc1.abcB} #{abc1.abcC}"
      LOGGER.info "#{abc2.abcA} #{abc2.abcB} #{abc2.abcC}"
    end
  end

  describe '::GetCharacterPlacement' do
    it ' retrieves information about a character string' do
      results = GCP_RESULTS.new.tap do |gcpr|
        gcpr.nGlyphs = 5
        gcpr.nMaxFit = 0
      end
      size = GetCharacterPlacement(hdc, 'hello'.to_w, 5, 100, results, :USEKERNING)
      # expect(size).not_to be_zero
      width = WinFFI.LOWORD(size)
      height = WinFFI.HIWORD(size)
      LOGGER.info "#{width} #{height}"
      LOGGER.info "#{results.values}"
    end
  end

  describe '::GetCharWidth' do
    it 'retrieves the widths, in logical coordinates, of consecutive characters in a specified range from the current font' do
      buffer = FFI::MemoryPointer.new(:int, 2)
      expect(GetCharWidth(hdc, 97, 98, buffer)).to be true
      buffer = buffer.read_array_of_int(2)
      LOGGER.info buffer
    end
  end

  describe '::GetCharWidth32' do
    it 'retrieves the widths, in logical coordinates, of consecutive characters in a specified range from the current font' do
      buffer = FFI::MemoryPointer.new(:int, 2)
      expect(GetCharWidth32(hdc, 97, 98, buffer)).to be true
      buffer = buffer.read_array_of_int(2)
      LOGGER.info buffer
    end
  end

  describe '::GetCharWidthFloat' do
    it 'retrieves the widths, in logical coordinates, of consecutive glyph indices in a specified range from the current font' do
      buffer = FFI::MemoryPointer.new(:float, 2)
      expect(GetCharWidth32(hdc, 97, 98, buffer)).to be true
      buffer = buffer.read_array_of_float(2)
      LOGGER.info buffer
    end
  end

  describe '::GetCharWidthI' do
    it 'retrieves the widths, in logical coordinates, of consecutive glyph indices in a specified range from the current font' do
      buffer = FFI::MemoryPointer.new(:int, 2)
      expect(GetCharWidth32(hdc, 97, 98, buffer)).to be true
      buffer = buffer.read_array_of_int(2)
      LOGGER.info buffer
    end
  end

  describe '::GetFontData' do
    it 'retrieves font metric data for a TrueType font' do
      size = GetFontData(hdc, 0, 0, nil, 0)
      expect(size).not_to eq GDI_ERROR
      expect(size).to be > 0
      buffer = FFI::MemoryPointer.new(:uchar, size)
      size = GetFontData(hdc, 0, 0, buffer, size)
      expect(size).not_to eq GDI_ERROR
      expect(size).to be > 0
    end
  end

  describe '::GetFontLanguageInfo' do
    it 'returns information about the currently selected font for the specified display context' do
      expect(GetFontLanguageInfo(hdc)).to be_a Numeric
    end
  end

  describe '::GetFontUnicodeRanges' do
    it 'returns information about which Unicode characters are supported by a font' do
      # TODO pointer hack in struct
      glyph_set = GLYPHSET.new
      size = GetFontUnicodeRanges(hdc, nil)
      expect(size).to be > 0
    end
  end

  describe '::GetGlyphIndices' do
    it 'translates a string into an array of glyph indices' do
      buffer = FFI::MemoryPointer.new(WinFFI.find_type(:word), 4)
      glyphs = GetGlyphIndices(hdc, 'test'.to_w, 4, buffer, :MARK_NONEXISTING_GLYPHS)
      expect(glyphs).not_to eq GDI_ERROR
      expect(buffer.read_array_of_short(4)).to all(be_a Numeric)
    end
  end

  describe '::GetGlyphOutline' do
    it 'retrieves the outline or bitmap for a character in the TrueType font that is selected into the specified device context' do
      glyph_metrics = GLYPHMETRICS.new
      size = GetGlyphOutline(hdc, 97, :BEZIER, glyph_metrics, 0, nil, MAT2.identity)
      expect(size).not_to eq GDI_ERROR
      expect(size).to be > 0
      buffer = FFI::MemoryPointer.new(:uchar, size)
      result = GetGlyphOutline(hdc, 97, :BEZIER, glyph_metrics, size, buffer, MAT2.identity)
      expect(result).not_to eq GDI_ERROR
      expect(result).to be > 0
    end
  end

  describe '::GetKerningPairs' do
    it 'retrieves the character-kerning pairs for the currently selected font for the specified device context' do
      number_of_kerning_pairs = GetKerningPairs(hdc, 0, nil)
      expect(number_of_kerning_pairs).to be > 0
      kerning_pairs = FFI::MemoryPointer.new(KERNINGPAIR, number_of_kerning_pairs)
      expect(GetKerningPairs(hdc, number_of_kerning_pairs, kerning_pairs)).to eq number_of_kerning_pairs
      Array.from_pointer_of(KERNINGPAIR, kerning_pairs, number_of_kerning_pairs)
    end
  end

  describe '::GetOutlineTextMetrics' do
    it 'retrieves font metrics for TrueType fonts' do
      number_of_outline_text_metrics = GetOutlineTextMetrics(hdc, 0, nil)
      expect(number_of_outline_text_metrics).to be > 0
      buffer = FFI::MemoryPointer.new(OUTLINETEXTMETRIC, number_of_outline_text_metrics)
      expect(GetOutlineTextMetrics(hdc, number_of_outline_text_metrics, buffer)).to eq number_of_outline_text_metrics
      Array.from_pointer_of(OUTLINETEXTMETRIC, buffer, number_of_outline_text_metrics)
    end
  end

  describe '::GetRasterizerCaps' do
    it 'returns flags indicating whether TrueType fonts are installed in the system' do
      rasterizer_status = RASTERIZER_STATUS.new
      expect(GetRasterizerCaps(rasterizer_status, rasterizer_status.size)).to be true
    end
  end

  describe '::GetTextAlign' do
    it 'retrieves the font-alignment setting for the specified device context' do
      expect(TextAlignFlag[GetTextAlign(hdc)]).to be_a(Symbol)
    end
  end

  describe '::GetTextCharacterExtra' do
    it 'retrieves the current intercharacter spacing for the specified device context.' do
      expect(GetTextCharacterExtra(hdc)).not_to be 0x8000000
    end
  end

  describe '::GetTextColor' do
    it 'retrieves the current font color for the specified device context' do
      expect(GetTextColor(hdc)).not_to eq CLR_INVALID
    end
  end

  describe '::GetTextExtentExPoint' do
    it 'retrieves the number of characters in a specified string that will fit within a specified space and fills an array with the font extent for each of those characters' do
      fit = FFI::MemoryPointer.new(:int)
      dx = FFI::MemoryPointer.new(:int, 4)
      size = SIZE.new
      expect(GetTextExtentExPoint(hdc, 'test'.to_w, 4, 50, fit, dx, size)).to be true
    end
  end

  describe '::GetTextExtentExPointI' do
    it 'retrieves the number of characters in a specified string that will fit within a specified space and fills an array with the font extent for each of those characters.' do
      buffer = FFI::MemoryPointer.new(WinFFI.find_type(:word), 4)
      GetGlyphIndices(hdc, 'test'.to_w, 4, buffer, :MARK_NONEXISTING_GLYPHS)
      fit = FFI::MemoryPointer.new(:int)
      dx = FFI::MemoryPointer.new(:int, 4)
      size = SIZE.new
      expect(GetTextExtentExPointI(hdc, buffer, 4, 50, fit, dx, size)).to be true
    end
  end

  describe '::GetTextExtentPoint' do
    it 'computes the width and height of the specified string of font' do
      expect(GetTextExtentPoint(hdc, 'test'.to_w, 4, SIZE.new)).to be true
    end
  end

  describe '::GetTextExtentPoint32' do
    it 'computes the width and height of the specified string of font' do
      expect(GetTextExtentPoint32(hdc, 'test'.to_w, 4, SIZE.new)).to be true
    end
  end

  describe '::GetTextExtentPointI' do
    it ' computes the width and height of the specified array of glyph indices' do
      buffer = FFI::MemoryPointer.new(WinFFI.find_type(:word), 4)
      GetGlyphIndices(hdc, 'test'.to_w, 4, buffer, :MARK_NONEXISTING_GLYPHS)
      expect(GetTextExtentPointI(hdc, buffer, 4, SIZE.new)).to be true
    end
  end

  describe '::GetTextFace' do
    it 'retrieves the typeface name of the font that is selected into the specified device context' do
      size = GetTextFace(hdc, 0, nil)
      expect(size).to be > 0
      buffer = FFI::MemoryPointer.new(WinFFI.find_type(:tchar), size)
      GetTextFace(hdc, size, buffer)
      expect(String.from_pointer(buffer, size)).to be_a String
    end
  end

  describe '::GetTextMetrics' do
    it 'fills the specified buffer with the metrics for the currently selected font' do
      expect(GetTextMetrics(hdc, TEXTMETRIC.new)).to be true
    end
  end

  describe '::PolyTextOut' do
    it 'draws several strings using the font and font colors currently selected in the specified device context' do
      mp = FFI::MemoryPointer.new(POLYTEXT, 2)

      pts = Array.from_pointer_of(POLYTEXT, mp, 2)
      pts[0].x = 10
      pts[0].y = 10
      pts[0].n = 4
      pts[0].lpstr = 'test'.to_w
      pts[0].uiFlags = :OPAQUE
      pts[0].pdx = nil

      pts[1].x = 20
      pts[1].y = 20
      pts[1].n = 5
      pts[1].lpstr = 'test2'.to_w
      pts[1].uiFlags = :OPAQUE
      pts[1].pdx = nil
      expect(PolyTextOut(hdc, mp, 2)).to be true
    end
  end

  describe '::RemoveFontMemResourceEx' do
    it 'removes the fonts added from a memory image file' do
      # RemoveFontMemResourceEx()
      # TODO
      raise NotImplementedError
    end
  end

  describe '::RemoveFontResource' do
    it 'removes the fonts in the specified file from the system font table' do
      expect(RemoveFontResource(file_path)).to be true
    end
  end

  describe '::RemoveFontResourceEx' do
    it 'removes the fonts in the specified file from the system font table' do
      expect(RemoveFontResourceEx(file_path, :PRIVATE, nil)).to be true
    end
  end

  describe '::SetMapperFlags' do
    it 'alters the algorithm the font mapper uses when it maps logical fonts to physical fonts' do
      expect(SetMapperFlags(hdc, 0)).not_to eq GDI_ERROR
    end
  end

  describe '::SetTextAlign' do
    it 'sets the font-alignment flags for the specified device context' do
      expect(SetTextAlign(hdc, :CENTER)).not_to eq GDI_ERROR
    end
  end

  describe '::SetTextCharacterExtra' do
    it 'sets the intercharacter spacing. Intercharacter spacing is added to each character, including break characters, when the system writes a line of font' do
      expect(SetTextCharacterExtra(hdc, 0)).not_to eq 0x80000000
    end
  end

  describe '::SetTextColor' do
    it 'sets the font color for the specified device context to the specified color' do
      expect(SetTextColor(hdc, Gdi32.RGB(255, 0, 0))).not_to eq CLR_INVALID
    end
  end

  describe '::SetTextJustification' do
    it 'specifies the amount of space the system should add to the break characters in a string of font' do
      expect(SetTextJustification(hdc, 0, 0)).to be true
    end
  end

  describe '::TextOut' do
    it 'writes a character string at the specified location, using the currently selected font, background color, and font color' do
      expect(TextOut(hdc, 30, 30, 'test'.to_w, 4)).to be true
    end
  end
end