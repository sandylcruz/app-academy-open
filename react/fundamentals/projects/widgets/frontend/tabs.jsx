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
        {tab.title}
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
      <div>
        <h1>Tabs</h1>
        <div className="tabs-container">
          <div className="tabs-class">
            {this.props.tabs.map((tab, index) => (
              <div class="headers">
                <Header
                  key={tab}
                  tab={tab}
                  onClick={this.handleClick}
                  index={index}
                />
              </div>
            ))}
            <div className="tabs-content">
              <article>{currentTab.content}</article>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Tabs;
