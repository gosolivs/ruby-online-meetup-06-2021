<template>
  <router-view />
</template>

<script>
import { router } from "./router/router";

export default {
  name: "app",
  router,
};
</script>
