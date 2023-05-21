<template>
  <!-- component -->
  <div class="bg-slate-500">
    <div class="container px-6 mx-auto">
      <div class="flex flex-col justify-evenly h-screen text-center md:flex-row md:items-center md:text-left">
        <div class="flex flex-col w-full">
          <div>
            <Icon name="ic:round-currency-exchange" size="64" />
          </div>
          <h1 class="text-5xl font-bold text-gray-800">
            Luna Travel Monetary Services
          </h1>
          <p class="mx-auto w-5/12 text-gray-500 md:mx-0">
            Control and monitorize your website data from dashboard.
          </p>
        </div>
        <div class="mx-auto w-full md:mx-0 md:w-full lg:w-9/12">
          <div class="flex flex-col p-10 w-full bg-white rounded-xl shadow-xl">
            <h2 class="mb-5 text-2xl font-bold text-left text-gray-800">
              Sigin
            </h2>
            <form action="" class="w-full">
              <div id="input" class="flex flex-col my-5 w-full">
                <label for="username" class="mb-2 text-gray-500">Username</label>
                <input type="text" id="username" placeholder="Please insert your username"
                  class="py-3 px-4 placeholder-gray-300 rounded-lg border-2 border-gray-100 appearance-none focus:ring-2 focus:ring-green-600 focus:shadow-lg focus:outline-none" />
              </div>
              <div id="input" class="flex flex-col my-5 w-full">
                <label for="password" class="mb-2 text-gray-500">Password</label>
                <input type="password" id="password" placeholder="Please insert your password"
                  class="py-3 px-4 placeholder-gray-300 rounded-lg border-2 border-gray-100 appearance-none focus:ring-2 focus:ring-green-600 focus:shadow-lg focus:outline-none" />
              </div>
              <div id="button" class="flex flex-col my-5 w-full">
                <button type="button" class="py-4 w-full text-green-100 bg-green-600 rounded-lg">
                  <div class="flex flex-row justify-center items-center">
                    <div class="mr-2">
                      <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1">
                        </path>
                      </svg>
                    </div>
                    <div class="font-bold">Sigin</div>
                  </div>
                </button>
                <div class="flex justify-evenly mt-5">
                  <a href="#" class="w-full font-medium text-center text-gray-500">Recover password!</a>
                  <a href="#" class="w-full font-medium text-center text-gray-500">Singup!</a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
definePageMeta({
  layout: false,
});
</script>

<style lang="scss" scoped></style>
