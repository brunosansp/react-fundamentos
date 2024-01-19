import React, { Fragment } from "react";
import Post from "./Post";
import Header from "./Header";

const category = "Categoria fundamentos do React";

// O React obriga que todo componente inicie com a primeira letra em maiúsculo
function App() {
  return (
    <Fragment>
      <Header title="JStack Blog">
        <h2>Header children</h2>
      </Header>

      <h5>{category}</h5>

      <hr />

      <Post
        post={{
          title: "Título da notícia",
          subtitle: "Subtítulo da notícia",
        }}
      />
      <Post
        post={{
          title: "Título da notícia",
          subtitle: "Subtítulo da notícia",
        }}
      />
      <Post
        post={{
          title: "Título da notícia",
          subtitle: "Subtítulo da notícia",
        }}
      />
    </Fragment>
  );
}

export default App;
