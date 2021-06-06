<template>
  <div>
    <h2 class="mb-1">{{ title }}</h2>
    <p v-if="description" class="mb-0">{{ description }}</p>

    <b-row class="mt-4">
      <b-col v-for="post of postsList" :key="post.title" lg="3" md="6">
        <v-post
          :title="post.title"
          :description="post.content"
          :image="post.image"
          :author="post.author"
        />
      </b-col>

      <b-col v-if="postsList.length === 0">
        <b-card>
          <b-card-text>Статей нет</b-card-text>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
export default {
  name: "v-category",

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
    postsList: ({ posts }) => JSON.parse(posts) ?? [],
  },
};
</script>
