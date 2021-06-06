<template>
  <div>
    <b-navbar class="mb-4" type="dark" variant="dark">
      <b-container fluid>
        <b-navbar-brand>Мой блог</b-navbar-brand>
      </b-container>
    </b-navbar>

    <b-container>
      <b-card v-if="hasProgress">Загрузка...</b-card>
      <b-card v-else-if="hasError">Произошла ошибка</b-card>

      <v-category
        v-for="category of categories"
        :key="category.title"
        :title="category.title"
        :description="category.description"
        :posts="category.posts"
      />
    </b-container>
  </div>
</template>

<script>
import { BNavbar, BNavbarBrand, BContainer, BCard } from "bootstrap-vue"

import VCategory from "../../../components/v-category";
import VPost from "../../../components/v-post";
import { getCategories } from "../../api/api";

export default {
  name: "page-category",

  components: {
    BContainer,
    BNavbar,
    BNavbarBrand,
    BCard,
    VCategory,
    VPost,
  },

  data: () => ({
    hasProgress: false,
    hasError: false,
    categories: [],
  }),

  created() {
    this.fetchCategories();
  },

  methods: {
    fetchCategories() {
      this.hasProgress = true;

      getCategories()
        .then((categories) => {
          this.categories = categories;
        })
        .catch(() => {
          this.hasError = true;
        })
        .finally(() => {
          this.hasProgress = false;
        });
    },
  },
};
</script>
