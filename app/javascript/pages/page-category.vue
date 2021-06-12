<template>
  <div>
    <v-header>Мой блог</v-header>

    <b-container>
      <v-category
        v-for="category of categoryList"
        :key="category.title"
        :title="category.title"
        :description="category.description"
        :posts="category.posts"
      />
    </b-container>
  </div>
</template>

<script>
import { BContainer } from "bootstrap-vue"

import VHeader from "../components/v-header";
import VCategory from "../components/v-category";
import VPost from "../components/v-post";

export default {
  name: "page-category",

  components: {
    BContainer,
    VHeader,
    VCategory,
    VPost,
  },

  props: {
    categories: {
      type: String,
      required: true,
    },
  },

  computed: {
    categoryList: ({ categories }) => JSON.parse(categories) ?? [],
  },
};
</script>
