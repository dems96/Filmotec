<template>
  <div class="container-fluid" id="app">
    <br>
    <br>
    <h1>Bienvenue dans l'application Filmotec</h1>
    <br>
    <br>
    <label for="user-input"> Entrez le nom de film par mot clé : </label>
    <input id="user-input" type="text" v-model="nomFilm">
    <br>
    <br>
    <p for=""> choisir film présent dans la liste : </p>

    <div class="row">
      <!--<p>{{info}}</p>-->
      <div class="col-lg-3" v-for="detail in info" 
      :key="detail.data">
          <a v-if="detail.poster_path != null "><router-link :to="{name: 'lefilm', params: {id: detail.id }}"><img v-bind:src= "'https://image.tmdb.org/t/p/w200' + detail.poster_path "></router-link></a>
          <div v-if="detail.poster_path == null" style="height: 300px;">
            <h4 style="margin-bottom:20%;"> Pas d'image pour ce film ! </h4>
            <a><router-link :to="{name: 'lefilm', params: {id: detail.id }}">Voir le résumé</router-link></a>
          </div>
          <p>{{detail.title}}</p>
      </div>
    </div>
    
  </div>
</template>

<script>
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import axios from 'axios';
  
  export default {
    name: "film",
    data: function () {
      return {
        img:null,
        nomFilm: "",
        info: null
      };
    },
    updated () {
      axios
        .get("https://api.themoviedb.org/3/search/movie?api_key=93ae8c078f636b6fdd1da78f920090b3&query="+ this.nomFilm+"&language=fr-FR")
        .then(response => (this.info = response.data.results))
      axios
        .get("https://api.themoviedb.org/3/search/movie?api_key=93ae8c078f636b6fdd1da78f920090b3&query="+ this.nomFilm+"&language=fr-FR")
        .then(response => (this.img = response.data.poster_path))
    },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
