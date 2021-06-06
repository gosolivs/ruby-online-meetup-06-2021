<template>
  <div>
    <b-navbar class="mb-4" type="dark" variant="dark">
      <b-container fluid>
        <b-navbar-brand>Мой блог</b-navbar-brand>
      </b-container>
    </b-navbar>

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
import { BNavbar, BNavbarBrand, BContainer } from 'bootstrap-vue'

import VCategory from '../components/v-category';
import VPost from '../components/v-post';

export default {
  name: "page-category",

  components: {
    BContainer,
    BNavbar,
    BNavbarBrand,
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
