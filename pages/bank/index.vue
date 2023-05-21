<template>
  <div id="bank" class="mt-6 w-full bg-yellow-400">
    <div class="mx-auto max-w-lg">
      <div class="py-1">
        <span class="px-1 text-sm text-gray-600">Bank Name</span>
        <input placeholder="" type="text"
          class="block py-2 px-3 w-full placeholder-gray-600 bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md" />
      </div>
      <div class="py-1">
        <span class="px-1 text-sm text-gray-600">Agency</span>
        <input placeholder="" type="text"
          class="block py-2 px-3 w-full placeholder-gray-600 bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md" />
      </div>
      <div class="py-1">
        <span class="px-1 text-sm text-gray-600">Account Number</span>
        <input placeholder="" type="text"
          class="block py-2 px-3 w-full placeholder-gray-600 bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
useHead({
  title: "Bank Management",
});

const { consLog } = useUtils();
consLog("BANK");
</script>

<style lang="scss" scoped></style>
