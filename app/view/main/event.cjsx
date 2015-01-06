React = require 'react'

module.exports = React.createClass
  render: ->
    {name, start_time, end_time, location, id, cover, description, venue, ticket_uri} = @props.item
    imgSrc =
    dateStr = "#{start_time} - #{end_time}"
    fbLink = "https://www.facebook.com/#{id}"
    venueLink = "https://www.facebook.com/#{venue.id}"
    <li className="event">
      <a href={fbLink}>
        <h2>{name}</h2>
        <img src={cover.source} alt={name} />
      </a>
      <div className="date">{dateStr}</div>
      <a href={venueLink}>
        <div className="location">{location}</div>
      </a>
      <p>{description} <a href={ticket_uri}>Tickets!</a></p>
    </li>
