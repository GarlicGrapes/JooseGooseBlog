const initialState = {
    currentUser: {},
    loggedIn: false
}

const sessionsReducer = (state=initialState, action) => {
    switch(action.type) {
        case "LOAD_USER": 
            return{
                ...state,
                currentUser: action.payload,
                loggedIn: true
        }
        case "POST_LOGIN":
            return{
                ...state,
                currentUser: action.payload,
                loggedIn: true
        }
        case "LOGOUT":
            console.log("you have logged out")
            return {
                ...state,
                currentUser: {},
                loggedIn: false
            }
        default:
            return state;

    }
}

export default sessionsReducer;