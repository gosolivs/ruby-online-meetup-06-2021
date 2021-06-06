<template>
  <b-card
    :img-src="image"
    :img-alt="title"
    img-top
    :title="title"
    :footer="author"
  >
    <b-card-text v-if="description" class="mt-2">
      {{ description }}
    </b-card-text>
  </b-card>
</template>

<script>
export default {
  name: "v-post",

  props: {
    title: {
      type: String,
      required: true,
    },
    description: {
      type: String,
    },
    image: {
      type: String,
      required: true,
    },
    author: {
      type: String,
      required: true,
    },
  },
};
</script>
