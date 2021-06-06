import Vue from 'vue';
import VueRouter from "vue-router";

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';

import App from '../frontend/app';

Vue.use(VueRouter);

document.addEventListener('DOMContentLoaded', () => {
  new Vue({ el: '#app', ...App });
});
