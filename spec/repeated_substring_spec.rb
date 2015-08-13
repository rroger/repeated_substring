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

  it 'it should return None for numbers' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring(2.24)).to eq('None')
  end

  it 'it should return None for lists' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring([1,2,3])).to eq('None')
  end

  it 'it should return None for ""' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("")).to eq('None')
  end

  it 'it should return None for "a"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("a")).to eq('None')
  end

  it 'it should return "a" for "aa"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("aa")).to eq('None')
  end

  it 'it should return None for "aab"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("aab")).to eq('None')
  end

  it 'it should return "abcd" for "abcabcabcdabcdabcabc"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("abcabcabcdabcdabcabc")).to eq("abcd")
  end

  it 'it should return None for "         "' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("        ")).to eq('None')
  end

  it 'it should return "abcdabcdefgxlslehaabcdefg" for "abcdefg"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("abcdabcdefgxlslehaabcdefg")).to eq("abcdefg")
  end

  it 'it should return "a a" for "a abda abd"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("a abda abd")).to eq("a a")
  end

  it 'it should return "aa" for "   aabdaa    abd    "' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("   aabdaa    abd    ")).to eq("aa")
  end

  it 'it should return "None" for "None"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("None")).to eq("None")
  end

  it 'it should return "None" for "NoneNone"' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring("NoneNone")).to eq("None")
  end

end
