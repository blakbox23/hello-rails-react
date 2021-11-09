const GET_GREATING = 'redux/greeting/GET_GREATING';

const initialValue = {};

const getGreeting = (payload) => async (dispatch) => {
    const request = await fetch('v1/greetings');
    const response = await request.json();
    const payload = await response.greeting;
  if (payload) {
    dispatch({
      type: GET_GREATING,
      payload,
    });
  }
};

const greetingReducer = (state = initialValue, action) => {
  switch (action.type) {
    case GET_GREATING:
      return {
        ...state,
        greetings: action.payload,
      };
    default:
      return state;
  }
};

export { greetingReducer, getGreeting };