import React, { Fragment, useState } from "react";
import Post from "./Post";
import Header from "./Header";

const category = "Categoria fundamentos do React";

// O React obriga que todo componente inicie com a primeira letra em maiúsculo
function App() {
  const [posts, setPosts] = useState([
    { id: Math.random(), likes: 10, title: "Título da notícia #01", subtitle: "Subtítulo da notícia #01", },
    { id: Math.random(), likes: 50, title: "Título da notícia #02", subtitle: "Subtítulo da notícia #02", },
    { id: Math.random(), likes: 20, title: "Título da notícia #03", subtitle: "Subtítulo da notícia #03", }
  ]);

  function handleRefresh() {
    setTimeout(() => {
      setPosts((prevState) => [
        ...prevState,
        {
          id: Math.random(),
          likes: 25,
          title: `Título da notícia #${prevState.length + 1}`,
          subtitle: `Subtítulo da notícia #${prevState.length + 1}`
        }
      ]);
    }, 2000);
  }

  function handleRemovePost(postId) {
    console.log('Remover post', postId);
    setPosts((prevState) =>
      prevState.filter(post => post.id !== postId)
    );
  }

  return (
    <Fragment>
      <Header>
        <h2>Header children</h2>
        <button onClick={handleRefresh}>Atualizar</button>
      </Header>

      <h5>{category}</h5>

      <hr />

      {posts.map(post => (
        <Post
          // Sempre que precisarmos renderizar uma lista é necessário passar uma key, é uma propriedade que o React já tem
          key={post.id}
          onRemove={handleRemovePost}
          likes={post.likes}
          post={{
            id: post.id,
            title: post.title,
            subtitle: post.subtitle
          }}
        />
      ))}
    </Fragment>
  );
}

export default App;
