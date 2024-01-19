import React from "react";

// using destructuring of props = props.title and props.children
export default function Header({ title, children }) {
  return (
    <>
      <h1>{title}</h1>
      {children}
    </>
  );
}
