React = require 'react'

module.exports = React.createClass
  render: ->

    {title, tagline} = @props.data
    pgTitle = title + ' | ' + tagline

    <section id="hero">
      <img src="assets/logo.png" alt="{pgTitle}" />
    </section>
