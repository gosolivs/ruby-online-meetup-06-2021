import Vue from 'vue/dist/vue';
import { BootstrapVue } from 'bootstrap-vue';

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';

import VPost from '../components/v-post';
import VCategory from '../components/v-category';

Vue.use(BootstrapVue);

Vue.component('v-post', VPost);
Vue.component('v-category', VCategory);

document.addEventListener('DOMContentLoaded', () => {
  new Vue({ el: '#app' });
});
