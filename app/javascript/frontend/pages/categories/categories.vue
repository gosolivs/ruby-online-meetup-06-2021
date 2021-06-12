<template>
  <div>
    <v-header>Мой блог</v-header>

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
import { BContainer, BCard } from "bootstrap-vue"

import VHeader from "../../../components/v-header";
import VCategory from "../../../components/v-category";
import VPost from "../../../components/v-post";
import { getCategories } from "../../api/api";

export default {
  name: "page-category",

  components: {
    BContainer,
    BCard,
    VHeader,
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
