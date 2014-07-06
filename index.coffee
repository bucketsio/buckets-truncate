truncate = require 'truncate-html'

module.exports = class TruncatePlugin

  constructor: (options={}) ->
    # This is the _Server-side_ version of Handlebars (hbs)
    options?.Handlebars?.registerHelper 'truncate', (text='', length=20) ->
      new Handlebars.SafeString """#{truncate(text, length)}"""
