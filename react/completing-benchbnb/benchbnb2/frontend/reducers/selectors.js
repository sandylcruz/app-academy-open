import { createSelector } from "reselect";

// const benchesSelector = createSelector(
//   (state) => {
//     // lookup function
//     return state.a;
//   },
//   (state) => {
//     // lookup function
//     return state.b;
//   },
//   (a, b) => {
//     // executed if a or b is changed. memoizes value to check if changed
//     return a + b;
//   }
// );

// will memoize, always return same array computed if benches itself hasn't changed
export const benchesSelector = createSelector(
  (state) => state.entities.benches,
  (benches) => Object.keys(benches).map((key) => benches[key])
);

export const selectErrors = createSelector(
  (state) => state.errors,
  (errors) => errors
);

export const selectCurrentUser = createSelector(
  (state) => {
    const currentUserId = state.session.id;

    if (!currentUserId) {
      return null;
    }

    return state.entities.users[currentUserId];
  },
  (currentUser) => currentUser
);
