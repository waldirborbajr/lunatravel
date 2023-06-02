<template>
  <div
    class="hidden justify-center items-center pt-1 antialiased lg:flex lg:ml-20"
  >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/customer"
      >{{ $t("MENU_CUSTOMER") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/bank"
      >{{ $t("MENU_BANK") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/city"
      >{{ $t("MENU_CITY") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/identification"
      >{{ $t("MENU_IDENTIFICATION") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/parameter"
      >{{ $t("MENU_PARAMETER") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/reports"
      >{{ $t("MENU_REPORT") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/user"
      >{{ $t("MENU_USER") }}</NuxtLink
    >
    <NuxtLink
      class="flex justify-center items-center mr-10 text-base font-medium tracking-tight text-opacity-90 transition duration-150 ease-in-out hover:text-cool-gray-600 text-slate-800"
      to="/login"
      >{{ $t("MENU_LOGOUT") }}</NuxtLink
    >
  </div>
</template>
