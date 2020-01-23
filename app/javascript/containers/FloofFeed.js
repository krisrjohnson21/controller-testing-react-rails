import React, { useState, useEffect } from 'react';
import PostTile from '../components/PostTile';
import FormContainer from './FormContainer';

const FloofFeed = (props) => {
  const [floof, setFloof] = useState({})
  const [posts, setPosts] = useState([])

    useEffect(() => {
      let id = document.getElementById('app').getAttribute('data-id')
      fetch(`/api/v1/floofs/${id}.json`)
      .then(response => {
        let responseBody = response.json()
        return responseBody
      }).then(responseBody => {
        setPosts(responseBody.posts)
        setFloof(responseBody.floof)
      })
    }, [])

  const addNewPost = (formPayload) => {
    fetch('/api/v1/posts', {
      method: 'POST',
      body: JSON.stringify(formPayload),
      headers: {
       Accept: "application/json",
       "Content-Type": "application/json"
     }
    }).then(response => {
      let newPost = response.json()
      return newPost
    }).then(newPost => {
      setPosts([...posts, newPost])
    })
  }

    let postTiles = posts.map(post => {
      return(
        <PostTile
          key={post.id}
          post={post}
          floof={floof}
        />
      )
    })

  return(
    <div>
      <h3>{floof.name} says...</h3>
      <h6>Floofiness rating: {floof.floofiness}</h6>
      <img src={floof.image} />
      <FormContainer
        addNewPost={addNewPost}
        floofId={floof.id}
      />
      {postTiles}
    </div>
  )
}

export default FloofFeed;
