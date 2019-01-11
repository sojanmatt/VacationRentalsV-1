import React, { Component } from "react";

const Display = props => {
  return (
    <div className="Display">
      <input
        type="text"
        value={props.userInput}
        placeholder="Enter values"
        onChange={props.changed}
      />
    </div>
  );
};

export default Display;
