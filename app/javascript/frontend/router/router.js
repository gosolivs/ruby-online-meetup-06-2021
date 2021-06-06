import VueRouter from "vue-router";

import Categories from "../pages/categories/categories";

export const router = new VueRouter({
  base: "/",
  mode: "history",
  routes: [
    {
      path: "/frontend/step_1",
      component: Categories,
    },
  ],
});
