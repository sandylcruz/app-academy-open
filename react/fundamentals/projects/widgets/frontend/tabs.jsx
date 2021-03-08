import React from "react";

class Tabs extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props.tabs);

    this.state = {
      title: "",
      currentTab: 0,
    };
  }

  render() {
    const currentTab = this.props.tabs[this.state.currentTab];
    console.log(currentTab);

    return (
      <div>
        <h1>Tabs</h1>
        <ul>
          {this.props.tabs.map((tab, index) => (
            <li
              key={tab.title}
              onClick={() => {
                this.setState({ currentTab: index });
              }}
            >
              {tab.title}
            </li>
          ))}
        </ul>
        <div className="tabs"></div>
      </div>
    );
  }
}

export default Tabs;
