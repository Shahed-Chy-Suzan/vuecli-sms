import { createStore } from 'vuex'
import createPersistedState from "vuex-persistedstate";
import {auth} from './modules/auth'

export default createStore({
  state: { 
  },
  mutations: {
  },
  actions: {
  },
  modules: {
    auth
  },
  // plugins: [createPersistedState()],		//amader sob data save lagbe na, only auth er data gula save dorkar tai,eta comment
  plugins: [createPersistedState({			// only auth er data/info gula save kora hocche
    paths: ['auth'],
  })],
})