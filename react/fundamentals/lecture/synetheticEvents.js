const handleClick = (event) => {
  event.preventDefault();
  alert("clicked!");
};

const SimpleButton = () => (
  <input type="submit" onClick={handleClick}>
    Click me!
  </input>
);
