fs = require 'fs'
path = require 'path'

module.exports =
  selector: '*'
  suggestionPriority: -1
  filterSuggestions: true
  completions: {}

  loadCompletions: ->
    fs.readFile(
      path.resolve(__dirname, '..', 'completions.json'),
      (err, data) => @completions = JSON.parse(data) unless err?)

  getSuggestions: ({editor, prefix}) ->
    if prefix.length < 3
      return []

    completions = []
    for type, names of @completions
      for name in names
        completions.push({type: type, snippet: name})
    completions
