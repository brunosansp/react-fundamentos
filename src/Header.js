import React, { useContext } from "react";
import PropTypes from "prop-types";

import Button from "./Button";
import { ThemeContext } from "./ThemeContext";

// using destructuring of props = props.title and props.children
export default function Header(props) {
  const { onToggleTheme } = useContext(ThemeContext);

  return (
    <>
      <h1>{props.title}</h1>
      <Button onClick={onToggleTheme}>
        Muda tema
      </Button>
      {props.children}
    </>
  );
}

Header.propTypes = {
  title: PropTypes.string,
  children: PropTypes.node.isRequired
};

Header.defaultProps = {
  title: "JStack`s Blog",
};
