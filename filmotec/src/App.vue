<template>
  <div id="app">
    
    <nav class="topnav fixed-top">
      <a><router-link to="/critique">&nbsp;Voir la liste des critiques</router-link> </a>
      <a style=""><router-link to="/">Accueil Filmotec</router-link></a>
    </nav>
    <img style="margin-top:10%"  alt="Vue logo" src="./assets/logo.png" width="100" height="100">
    
    <Film v-bind:nomFilm="nomFilm" v-bind:info="info"/>
    <router-view/>
    
    
  </div>
</template>

<script>
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
  export default {
    name: "app",
  };
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: -5px;
}
.topnav {
  margin-bottom: 30px;
  overflow: hidden;
  background-color: #333;
}
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 12px;
  text-decoration: none;
  font-size: 17px;
}

</style>
