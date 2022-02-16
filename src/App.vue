<template>
  <div>
    <div class="wrapper">

      <!-- Navbar -->
      <NavBar></NavBar>

      <!-- Main Sidebar Container -->
      <side-bar></side-bar>

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
};
</script>