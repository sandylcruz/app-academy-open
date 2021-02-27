/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module) => {

class FollowToggle {
  constructor(el, options) {
    this.$el = $(el);
    this.userId = this.$el.data("user-id");
    this.followState = this.$el.data("initial-follow-state");
    this.render();

    this.$el.on("click", this.handleClick.bind(this));
  }

  handleClick(event) {
    const followToggle = this;
    const eventUserId = event.target.getAttribute("data-user-id");

    event.preventDefault();

    $.ajax({
      url: `/users/${eventUserId}/follow`,
      dataType: "json",
      type: this.followState === "unfollowed" ? "POST" : "DELETE",
      success: () => {
        if (this.followState === "followed") {
          this.followState = "unfollowed";
          this.render();
        } else {
          this.followState = "followed";
          this.render();
        }
      },
    });
  }

  render() {
    if (this.followState === "unfollowed") {
      this.$el.html("Follow");
    } else if (this.followState === "followed") {
      this.$el.html("Unfollowed");
    }
  }
}

module.exports = FollowToggle;


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const FollowToggle = __webpack_require__(/*! ./follow_toggle.js */ "./frontend/follow_toggle.js");

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    console.log("hi");
    new FollowToggle($button, {});
  });
});

})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map