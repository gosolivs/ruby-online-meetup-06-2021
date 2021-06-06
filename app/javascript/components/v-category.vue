<template>
  <div>
    <h2 class="mb-1">{{ title }}</h2>
    <p v-if="description" class="mb-0">{{ description }}</p>

    <b-row class="mt-4">
      <b-col v-for="post of postList" :key="post.id" lg="3" md="6">
        <v-post
          :title="post.title"
          :description="post.content"
          :image="post.image_path"
          :author="post.author"
        />
      </b-col>

      <b-col v-if="postList.length === 0">
        <b-card>
          <b-card-text>Статей нет</b-card-text>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
import VPost from './v-post';

export default {
  name: "v-category",

  components: {
    VPost,
  },

  props: {
    title: {
      type: String,
      required: true,
    },
    description: {
      type: String,
    },
    posts: {
      type: String,
    },
  },

  computed: {
    postList: ({ posts }) => JSON.parse(posts) ?? [],
  },
};
</script>
