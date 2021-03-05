import Dog from "./dog";

const App = () => <Dog name="Fido" breed="Greyhound"></Dog>;

// dog.jsx
class Dog extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        Name: {this.props.name}, Breed: {this.props.breed}
      </div>
    );
  }
}

export default Dog;

//

class WordInput extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      word: "",
    };

    this.updateWord = this.updateWord.bind(this);
  }

  updateWord(event) {
    this.setState({ word: event.currentTarget.value }, () => {
      console.log(this.state.word);
    });
  }

  render() {
    return (
      <div>
        <input onChange={this.updateWord} value={this.state.word} />
        <span>The word is: {this.state.word}</span>
      </div>
    );
  }
}
