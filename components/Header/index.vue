<template>
  <div class="flex justify-between items-center bg-slate-400">
    <div class="flex justify-center items-center">
      <div class="flex justify-center items-center p-4 font-normal text-slate-950">
        <Icon name="material-symbols:currency-exchange" size="24" />
        Luna Travel Monetary Services
      </div>
      <div class="hidden justify-center items-center pt-1 antialiased lg:flex lg:ml-20">
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/customer">Customer</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/bank">Bank</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/city">City</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/identification">Identification</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/parameter">Parameter</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/reports">Parameter</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/user">User</NuxtLink>
        <NuxtLink
          class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-gray-700 text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600"
          to="/login">Logout</NuxtLink>
      </div>
    </div>
  </div>

  <!--
  <div id="Header" class="fixed z-50 w-full">
    <Icon name="material-symbols:currency-exchange" size="24" />
    Luna Travel Monetary Services
    <div id="Menu" class="flex bg-slate-400 w-ful text-slate-100">M E N U</div>
  </div>
  -->
</template>

<script setup></script>

<style lang="scss" scoped></style>
