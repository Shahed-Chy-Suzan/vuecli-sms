<template>
  <div class="hold-transition login-page">
    <div class="login-box">
      <!-- /.login-logo -->
      <div class="card card-outline card-primary">
        <div class="card-header text-center">
          <a href="#" class="h1"><b>Admin </b> Login</a>
        </div>
        <div class="card-body">
          <p class="login-box-msg">Sign in to start your session</p>

         <form @submit.prevent="adminLogin">
          <div v-if="errors.loginError">
           <div class="alert alert-warning alert-dismissible fade show" role="alert">
             <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
               <span class="sr-only">Close</span>
             </button>
             <strong>{{errors.loginError}}</strong>
           </div>
          </div>
            <div class="input-group mb-3">
              <input type="email" class="form-control" v-model="form.email"  placeholder="Email" />
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div>
            <span class="text-danger" v-if="errors.email">{{errors.email[0]}}</span>
            <div class="input-group mb-3">
              <input
                type="password"
                class="form-control"
                placeholder="Password"
                v-model="form.password"
              />
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-lock"></span>
                </div>
              </div>
            </div>
             <span class="text-danger" v-if="errors.password">{{errors.password[0]}}</span>
            <div class="row">
              <div class="col-8">
                <div class="icheck-primary">
                  <input type="checkbox" id="remember" />
                  <label for="remember"> Remember Me </label>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-4">
                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
              </div>
              <!-- /.col -->
            </div>
          </form>

          <p class="mb-1">
            <router-link to="/forgot/password">I forgot my password</router-link>
          </p>
        
          <p class="mb-0">
            <router-link :to="{name: 'Register'}" class="text-center">Register a new membership</router-link>
          </p>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
  </div>
</template>

<script>
export default {
    name: "Login",

    data() {
      return {
        form:{
          email:null,
          password:null,
        },
        errors:{},
      }
    },

    methods: {
      adminLogin(){
        this.$store.dispatch("LOGIN",this.form)
        .then((res) => {
          console.log(res.data)
          this.$router.push({ name: 'Home'})
        }).catch((err) => {
           console.log(err.response.data.errors)
          this.errors = err.response.data.errors
        });
      }
    },
 
};
</script>

<style>
</style>