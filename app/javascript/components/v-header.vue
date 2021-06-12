<template>
  <b-navbar type="dark" variant="dark" class="mb-4">
    <b-container fluid>
      <b-navbar-brand>
        <slot />
      </b-navbar-brand>
    </b-container>
  </b-navbar>
</template>

<script>
import { BNavbar, BContainer, BNavbarBrand } from "bootstrap-vue";


export default {
  name: "v-header",

  components: {
    BNavbar,
    BContainer,
    BNavbarBrand,
  },
};
</script>
