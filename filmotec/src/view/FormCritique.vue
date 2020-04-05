<template>
    <div id="formcritique">
        <br>
        <br>
        <h2>Critiquez votre film !</h2>
        <img v-bind:src= "'https://image.tmdb.org/t/p/w200' + img ">
        <br>
        <br>
        <form action="http://localhost:8080/2eme%20ann%c3%a9e/projet_filmotec/getInfo.php" method="post">
            <div class="container col-lg-4">
                <div class="form-group">
                    <label>Votre nom</label>
                    <input type="text" class="form-control" name="name">
                </div>
                <div class="form-group">
                    <label>Notez ce film sur 10 !</label>
                    <select class="form-control" name="note">
                    <option v-for="index in 10" :key="index">{{index}}</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label>Laissez une critique</label>
                    <textarea class="form-control" name="critique" rows="3"></textarea>
                </div>
                <input type="hidden" name="id" v-model="this.id">
                <input type="hidden" name="img" v-model="this.img">
                <p>
                    <input type="submit" name="submit" value="Envoyer !">  
                </p>
            </div>
        </form>
    </div>
</template>

<script>
import axios from 'axios';
  export default {
    name: "formcritique",
    data: function () {
      return {
        img: null,
      };
    },
    props: {
      id: Number,
    },
    mounted (){
        axios
        .get("https://api.themoviedb.org/3/movie/"+this.id+"?api_key=93ae8c078f636b6fdd1da78f920090b3&language=fr-FR")
        .then(response => (this.img = response.data.poster_path))
    }
  };

</script>