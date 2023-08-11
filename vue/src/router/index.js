import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import store from '../store/index'
import Rome from "../views/Rome.vue"
import Barcelona from "../views/Barcelona.vue"
import Zurich from "../views/Zurich.vue"
import Paris from "../views/Paris.vue"
import Brussels from "../views/Brussels.vue"
import Munich from "../views/Munich.vue"
import Itinerary from "../views/Itinerary.vue"
import ItineraryForm from "../views/ItineraryForm.vue"

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/rome/:cityId',
      name: 'rome',
      component: Rome,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/barcelona/:cityId',
      name: 'barcelona',
      component: Barcelona,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/zurich/:cityId',
      name: 'zurich',
      component: Zurich,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/brussels/:cityId',
      name: 'brussels',
      component: Brussels,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/paris/:cityId',
      name: 'paris',
      component: Paris,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/munich/:cityId',
      name: 'munich',
      component: Munich,
      meta: {
        requiresAuth: false
      }
    },

    {
      path: "/itinerary",
      name: "itinerary",
      component: Itinerary,
      meta: {
        requiresAuth: true
      }
    },

    {
      path: "/itinerary/form",
      name: "itinerary-form",
      component: ItineraryForm,
      meta: {
        requiresAuth: true
      }
    },

    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false
      }
    }
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    next("/login");
  } else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
