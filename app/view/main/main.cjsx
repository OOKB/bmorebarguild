React = require 'react'

Hero = require './hero'
Mission = require './mission'
Members = require './members'
Contact = require './contact'

module.exports = React.createClass
  render: ->

    {data} = @props

    <main>
      <Hero data={data} />
      <Mission data={data} />
      <Members data={data} />
      <Contact data={data} />
    </main>
