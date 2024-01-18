import React, { Fragment } from "react";
import Post from "./Post";

const category = "Posts da semana";

// O React obriga que todo componente inicie com a primeira letra em maiúsculo
function App() {
  return (
    <Fragment>
      <h1>JStack's Blog</h1>
      <h2>{category}</h2>

      <hr />

      <Post title="Título da notícia" subtitle="Subtítulo da notícia" />

      <Post title="Título da notícia" subtitle="Subtítulo da notícia" />
      <Post title="Título da notícia" subtitle="Subtítulo da notícia" />
    </Fragment>
  );
}

export default App;
