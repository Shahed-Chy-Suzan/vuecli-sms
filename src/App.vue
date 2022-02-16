<template>
  <div>
    <div class="wrapper">

      <!-- Navbar -->
      <NavBar v-if="auth"></NavBar>

      <!-- Main Sidebar Container -->
      <side-bar v-if="auth"></side-bar>

      <!-- Content Wrapper. Contains page content -->
      <router-view></router-view>

    </div><!-- ./wrapper -->
  </div>

</template>

<script>
import NavBar from "./components/NavBar.vue";
import SideBar from "./components/SideBar.vue";
export default {
  components: { NavBar, SideBar },
  data() {
    return {
      auth:false,
    }
  },
};
</script>