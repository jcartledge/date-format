class FormatChar
  constructor: (@char, @description, @regex) ->
    @regex = new RegExp @regex

  match: (str) ->
    return str.match @regex

module.exports = FormatChar
