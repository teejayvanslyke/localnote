@NoteEditor = React.createClass
  render: ->
    `<textarea ref="text" onKeyUp={this.persistNote} defaultValue={this.props.note.text}></textarea>`

  persistNote: ->
    _.throttle((=>
      $.ajax
        data:
          note:
            text: this.refs.text.value
        url: "/notes/#{this.props.note.id}"
        type: "PUT"
        dataType: "json"
    ), 100)()

