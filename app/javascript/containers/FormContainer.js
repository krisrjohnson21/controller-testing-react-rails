import React, { useState, useEffect } from 'react';

const FormContainer = (props) => {
  const [body, setBody] = useState("")

  const handleBody = (event) => {
    setBody(event.target.value)
  }

  const handleFormSubmit = (event) => {
    event.preventDefault()
    let formPayload = {
      body: body,
      floof_id: props.floofId,
    }
    props.addNewPost(formPayload)
  }

  return(
    <form onSubmit={handleFormSubmit}>
      <label>Post:
        <input
          name="post"
          type='text'
          value={body}
          onChange={handleBody}
        />
      </label>
      <input type="submit" value="Add Post!" />
    </form>
  )
}

export default FormContainer;
