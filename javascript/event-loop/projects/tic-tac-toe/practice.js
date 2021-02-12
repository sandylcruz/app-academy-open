function meow() {}

const bark = () => {};

const getOne = () => 1;

const getOne = () => {
  return 1;
};

const getOneGetter = () => {
  return () => {
    return 1;
  };
};

const getOneGetter = () => () => 1;

const oneGetter = getOneGetter();
