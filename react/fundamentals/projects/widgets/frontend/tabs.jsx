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
      <div className="headers">
        <li
          key={tab.title}
          onClick={this.handleClick}
          className={this.props.isActive ? "active" : ""}
        >
          {tab.title}
        </li>
      </div>
    );
  }
}

class Tabs extends React.Component {
  constructor(props) {
    const headers = {};

    super(props);

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

    return (
      <div>
        <h1>Tabs</h1>
        <div className="tabs-container">
          <div className="tabs-class">
            {this.props.tabs.map((tab, index) => (
              <Header
                key={tab.title}
                tab={tab}
                onClick={this.handleClick}
                index={index}
                isActive={this.state.currentTab === index}
              />
            ))}
          </div>

          <div className="tabs-content">
            <article>{currentTab.content}</article>
          </div>
        </div>
      </div>
    );
  }
}

export default Tabs;
