React = require 'react'

module.exports = React.createClass
  render: ->
    {events, noEvents} = @props.data

    <section id="events">
      <h3>Events</h3>
      <div className="group">
        <p className="twelve columns">{noEvents}</p>
      </div>
    </section>
