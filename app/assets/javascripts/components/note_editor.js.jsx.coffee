@NoteEditor = React.createClass
  render: ->
    `<form><textarea id="note_text" ref="text" onInput={this.persistNote} defaultValue={this.props.note.text}></textarea></form>`

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

