React = require 'react'

module.exports = React.createClass
  # Get link for the user!
  sendToTicket: ->
    FB.api "/326251754240776?fields=ticket_uri", (response) ->
      if response.ticket_uri
        window.location.href = response.ticket_uri

  handleTicket: (e) ->
    if e and e.preventDefault
      e.preventDefault()
    FB.getLoginStatus (response) =>
      {status} = response
      if status is "connected"
        @sendToTicket()
      else if e isnt false
        FB.login =>
          @handleTicket false
      else
        console.log 'User did not approve app!'
        #alert('A link to the tickets can be found on the facebook event page.')
        window.location.href = "https://www.facebook.com/#{@props.item.id}"

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
      <p>{description} <a onClick={@handleTicket} href={ticket_uri}>Tickets!</a></p>
    </li>