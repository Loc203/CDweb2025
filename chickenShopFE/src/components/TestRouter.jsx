import React from "react";
import { Link } from "react-router";

const TestRouter = () => {
  return (
    <>
      <div>TestRouter</div>
      <Link to={"/"}> back Home</Link>
    </>
  );
};

export default TestRouter;
