import React from 'react';

const PostTile = props => {
  return(
    <div>
      <p>{props.post.body}</p>
      <span>{props.post.created_at}</span>
    </div>
  )
}

export default PostTile;
