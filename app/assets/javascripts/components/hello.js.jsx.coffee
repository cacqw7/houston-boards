class @Column extends React.Component
  @propTypes =
    name: React.PropTypes.string

  render: ->
    `<div>
      <div>Name: {this.props.name}</div>
    </div>`
