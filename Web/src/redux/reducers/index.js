
// function toggleMenu (state) {
//   var newState = Object.assign({}, state)
//   newState.show = !newState.show
//   return newState;
// }


export default function toggle(state = true, action) {
  console.log('toggled', action);
    switch (action.type) {
      case 'TOGGLE':
        // return toggleMenu(state)
        return action.bool
      default:
        return state
    }
  }

  