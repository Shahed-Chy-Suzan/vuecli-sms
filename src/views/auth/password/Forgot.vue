<template>
  <div class="hold-transition login-page">
    <div class="login-box">
      <!-- /.login-logo -->
      <div class="card card-outline card-primary">
        <div class="card-header text-center">
          <a href="#" class="h1"><b>Forgot </b> Password</a>
        </div>
        <div class="card-body">
          <p class="login-box-msg">Submit your email for reseting password</p>

         <form @submit.prevent="adminForgotPassword">
          <div v-if="msg">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                <span class="sr-only">Close</span>
              </button>
              <small><strong>{{msg.message}}</strong></small>
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


            <div class="row">
              <!-- /.col -->
              <div class="col-12 mb-2">
                <button type="submit" class="btn btn-primary btn-block">Send Password Reset Link</button>
              </div>
              <!-- /.col -->
            </div>
          </form>

          <p class="mb-1">
            <router-link to="/">Back to Sign In</router-link>
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
    name: "Forgot",

    data() {
      return {
        form:{
          email:null,
        },
        errors:{},
        msg:'',
      }
    },

    methods: {
      adminForgotPassword(){
        this.$store.dispatch("FORGOT",this.form)
        .then((res) => {
          console.log(res.data)
          this.msg = res.data;
          this.form.email = null;
          //this.$router.push({ name: 'Home'})
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