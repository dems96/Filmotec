<template>
  <div>
    <h3>{{titre}}</h3>
    <div class="container">
      <img v-bind:src= "'https://image.tmdb.org/t/p/w200' + img ">
      <br>
      <h4>Résumé :</h4>
      <p>{{resuFilm}}</p>
    </div>
    <button><router-link v-bind:to="{name: 'formcritique', params: {id: id }}">Cliquez pour critiquer ce film !</router-link></button>
    <br>
    <!--<p>{{info}}</p>-->
  </div>
</template>

<script>
import axios from 'axios';
  export default {
    name: "lefilm",
    data: function () {
      return {
        info: null,
        critique :"",
        titre: null,
        resuFilm: null,
        img: null,
      };
    },
    props: {
      id: Number,
    },
    mounted () {
      axios
        .get("https://api.themoviedb.org/3/movie/"+this.id+"?api_key=93ae8c078f636b6fdd1da78f920090b3&language=fr-FR")
        .then(response => (this.info = response)),
      axios
        .get("https://api.themoviedb.org/3/movie/"+this.id+"?api_key=93ae8c078f636b6fdd1da78f920090b3&language=fr-FR")
        .then(response => (this.titre = response.data.title)),
      axios
        .get("https://api.themoviedb.org/3/movie/"+this.id+"?api_key=93ae8c078f636b6fdd1da78f920090b3&language=fr-FR")
        .then(response => (this.img = response.data.poster_path)),
      axios
      .get("https://api.themoviedb.org/3/movie/"+this.id+"?api_key=93ae8c078f636b6fdd1da78f920090b3&language=fr-FR")
      .then(response => (this.resuFilm = response.data.overview))
    },
  };
</script>