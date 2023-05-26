<template>
  <div class="Main">
    <Alert />
  </div>
</template>

<script setup lang="ts">
definePageMeta({
  middleware: "auth",
});
</script>

<style lang="scss" scoped></style>
