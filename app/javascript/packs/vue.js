import Vue from "vue/dist/vue";
import { BootstrapVue } from "bootstrap-vue";

import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-vue/dist/bootstrap-vue.css";

import VCategory from "../components/v-category";
import PageCategory from "../pages/page-category";

Vue.use(BootstrapVue);

Vue.component("v-category", VCategory);
Vue.component("page-category", PageCategory);

document.addEventListener("DOMContentLoaded", () => {
  new Vue({ el: "#app" });
});
