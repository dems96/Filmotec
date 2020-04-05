import Vue from 'vue';
import Router from 'vue-router';
import LeFilm from './view/LeFilm.vue';
import Film from './view/Film.vue';
import Critique from './view/Critique.vue';
import FormCritique from './view/FormCritique.vue';

Vue.use(Router);

export default new Router({
  routes: [
    { path: '/lefilm/:id', name: 'lefilm', component: LeFilm, props : true },
    { path: '/', name: 'film', component: Film },
    { path: '/critique', name: 'critique', component: Critique },
    { path: '/formcritique/:id', name: 'formcritique', component: FormCritique, props : true},
  ]
});