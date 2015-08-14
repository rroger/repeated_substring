require 'spec_helper'
require 'repeated_substring'

RSpec.describe 'repeated_substring' do
  it 'is an example' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('banana')).to eq('an')
  end

  it 'it should return for banana an' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('banana')).to eq('an')
  end

  it 'it should return NONE for numbers' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring(2.24)).to eq('NONE')
  end

  it 'it should return NONE for lists' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring([1,2,3])).to eq('NONE')
  end

  it 'it should return NONE for ""' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("")).to eq('NONE')
  end

  it 'it should return NONE for "a"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("a")).to eq('NONE')
  end

  it 'it should return "a" for "aa"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("aa")).to eq('NONE')
  end

  it 'it should return NONE for "aab"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("aab")).to eq('NONE')
  end

  it 'it should return "abcabc" for "abcabcabcdabcdabcabc"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("abcabcabcdabcdabcabc")).to eq("abcabc")
  end

  it 'it should return NONE for "         "' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("        ")).to eq('NONE')
  end

  it 'it should return "abcdabcdefgxlslehaabcdefg" for "abcdefg"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("abcdabcdefgxlslehaabcdefg")).to eq("abcdefg")
  end

  it 'it should return "a abd" for "a abda abd"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("a abda abd")).to eq("a abd")
  end

  it 'it should return "   a" for "   aabdaa    abd    "' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("   aabdaa    abd    ")).to eq("   a")
  end

  it 'it should return "NONE" for "NONE"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("NONE")).to eq("NONE")
  end

  it 'it should return "NONE" for "NONENONE"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("NONENONE")).to eq("NONE")
  end

end
