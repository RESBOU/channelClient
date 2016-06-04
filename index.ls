# * require
require! {
  events
  lodash: { assign, omit, map, curry, times, reduce }
}
  
ChannelClient = exports.ChannelClient = class ChannelClient
  defaultOptions: {}
  (options) -> @options = assign {}, @defaultOptions, options
    
  # ( Credentials ) -> Promise<userData>
  login: -> ...

  # ( Property, Range ) -> Promise<Events>
  getEvents: -> ...
  
  # ( Property, Events ) -> Promise<Boolean>
  setEvents: -> ...
  
  # () -> Promise<Array<Property>>
  getProperties: -> ...

