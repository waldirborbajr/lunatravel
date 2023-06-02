<template>
  <div class="flex justify-between items-center w-screen bg-slate-500">
    <div class="flex justify-center items-center">
      <div
        class="flex justify-center items-center p-2 font-normal text-slate-950"
      >
        <Icon
          name="material-symbols:currency-exchange"
          size="34"
          class="pr-2"
        />
        {{ $t("COMPANY") }}
      </div>
      <Menu />
    </div>
  </div>
</template>

<script setup></script>

<style lang="scss" scoped></style>
