React = require 'react'

Hero = require './hero'
Mission = require './mission'
Contact = require './contact'


module.exports = React.createClass
  render: ->

    {data} = @props

    <main>
      <Hero data={data} />
      <Mission data={data} />
      <Contact data={data} />
    </main>
