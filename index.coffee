json = require "json-parse"
FormatChar = require "./format_char"

raw_format_chars = json.sync "./data/format_characters.json"
format_chars = []

raw_format_chars.map (raw) ->
  format_chars.push  new FormatChar raw.char, raw.description, raw.regex


input = "27 May 2013"
matches = {}

format_chars.map (fc) ->
  match = fc.match input
  if match
    matches[match.index] ?=
      start: match.index
      match: match[0]
      options: {}
    matches[match.index].options[fc.char] = fc.description

console.log matches
