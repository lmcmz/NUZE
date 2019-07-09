let _id = 0;
export const TOGGLE = 'TOGGLE';
export const toggle = bool => {
  console.log('toggle actions', bool)
  return {
    type: 'TOGGLE',
    id: _id++,
    bool
  };
}