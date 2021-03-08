import React from "react";

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    this.props.onClick(this.props.index);
  }

  render() {
    const tab = this.props.tab;

    return (
      <li key={tab.title} onClick={this.handleClick}>
        {tab.title}: {tab.content}
      </li>
    );
  }
}

class Tabs extends React.Component {
  constructor(props) {
    const headers = {};

    super(props);
    console.log(this.props.tabs);

    this.state = {
      currentTab: 0,
    };

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(index) {
    this.setState({ currentTab: index });
  }

  render() {
    const currentTab = this.props.tabs[this.state.currentTab];
    console.log(currentTab);

    return (
      <div class="tabs-class">
        <h1 class="tabs">Tabs</h1>
        <ul>
          {this.props.tabs.map((tab, index) => (
            <Header
              key={tab}
              tab={tab}
              onClick={this.handleClick}
              index={index}
            />
          ))}
        </ul>
      </div>
    );
  }
}

export default Tabs;
