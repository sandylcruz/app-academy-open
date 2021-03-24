import { Route } from "react-router-dom";
import PokemonIndexContainer from "./components/pokemon/pokemon_index_container.js";
import { HashRouter } from "react-router-dom";

const App = () => <Route path="/" component={PokemonIndexContainer} />;
