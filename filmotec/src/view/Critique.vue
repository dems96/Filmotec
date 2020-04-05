<template>
  <div id="critique">
    <br>
    <br>
    <h1>Critique des utilisateurs</h1>
    <br>
    <br>
    <br>
    <div v-for="infos in info" :key="infos.data">
        <div class="row container" style="margin-left:16%;">
            <div class="col-2">
                <p>{{infos.user}}</p>
            </div>
            <div class="col-5">
                <p>{{infos.critique}}</p>    
            </div>
            <div class="col-4">
                <p>note : {{infos.note}}</p>    
            </div>
            <div class="col-1 col-lg-1">
                <img style="width:100%;" v-bind:src= "'https://image.tmdb.org/t/p/w200/' + infos.img ">    
            </div>
        </div>
        <hr>
    </div>
  </div>
</template>

<script>
import info from '../bdd/info.json';
  export default {
    name: "lefilm",
    data: function () {
      return {
        info,
      };
    },
  };
</script>