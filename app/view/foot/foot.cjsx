React = require 'react'

module.exports = React.createClass
  render: ->

    {address, phone} = @props.data

    <footer>
      <p>Footer stuff will go here</p>
    </footer>
