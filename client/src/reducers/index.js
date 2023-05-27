import {combineReducers} from "redux"
// import blogsReducer from "./blogsReducer"
// import ingredientsReducer from "./ingredientsReducer"
// import cocktailsReducer from "./cocktailsReducer"
import sessionsReducer from "./sessionsReducer"

export default combineReducers({
    sessionsReducer: sessionsReducer,
    // blogsReducer: blogsReducer,
    // ingredientsReducer: ingredientsReducer,
    // cocktailsReducer: cocktailsReducer
})