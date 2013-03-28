date_format_query = new (require "date-format").DateFormatQuery

examples = [
  "27 May 2013"
  "3rd of August 99"
  "12:00am"
  "3/4/1988"
]

console.log date_format_query.suggestions_formatted(example) for example in examples
