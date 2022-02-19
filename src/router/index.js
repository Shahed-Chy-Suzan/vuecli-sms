import { createRouter, createWebHistory } from 'vue-router'
import store from '../store';
import Login from '../views/auth/Login.vue'
import Register from '../views/auth/Register.vue'
import Home from '../views/pages/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Login',
    component: Login,
    meta: { guest: true }   //if authenticate, will never access this
  },

  {
    path: '/register',
    name: 'Register',
    component: Register,
    meta: { guest: true }   //if authenticate, will never access this
  },
  
  {
    path: '/admin/home',
    name: 'Home',
    component: Home,
    meta: { requiresAuth: true }      //for --> only authenticated users can access this.
  },
  
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

// eslint-disable-next-line no-unused-vars
router.beforeEach((to, from) => {
  // instead of having to check every route record with
  // to.matched.some(record => record.meta.requiresAuth)
  if (to.meta.requiresAuth && !store.getters.GET_AUTH_STATUS) {
    // this route requires auth, check if logged in
    // if not, redirect to login page.
    return {
      path: '/',
      // save the location we were at to come back later
      query: { redirect: to.fullPath },
    }
  }
  else if (to.meta.guest && store.getters.GET_AUTH_STATUS) {
    // this route requires auth, check if logged in
    // if not, redirect to login page.
    return {
      path: '/admin/home',
      // save the location we were at to come back later
      query: { redirect: to.fullPath },
    }
  }
})

export default router