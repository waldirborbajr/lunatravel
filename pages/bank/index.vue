<template>
  <NuxtLink to="/">Home</NuxtLink>
  <div>Bank</div>
</template>

<script setup lang="ts">
useHead({
  title: "Bank",
});

const { consLog } = useUtils();
consLog("BANK");
</script>

<style lang="scss" scoped></style>
