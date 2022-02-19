<template>
  <div>
    <div class="wrapper">

      <!-- Navbar -->
      <NavBar v-if="loggedInStatus"></NavBar>

      <!-- Main Sidebar Container -->
      <side-bar v-if="loggedInStatus"></side-bar>

      <!-- Content Wrapper. Contains page content -->
      <router-view></router-view>

    </div>

  </div>

  <!-- <router-view/> -->
</template>

<script>
import NavBar from "./components/NavBar.vue";
import SideBar from "./components/SideBar.vue";

export default {
  components: { NavBar, SideBar },

  computed:{
    loggedInStatus(){
      return this.$store.getters.GET_AUTH_STATUS;
    }
  }
};
</script>
