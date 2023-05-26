<template>
  <!-- component -->
  <div class="bg-slate-700">
    <div class="container px-6 mx-auto">
      <div
        class="flex flex-col justify-evenly h-screen text-center md:flex-row md:items-center md:text-left"
      >
        <div class="flex flex-col w-full">
          <div>
            <Icon
              name="ic:round-currency-exchange"
              size="44px"
              stroke-width="4"
              class="text-slate-300"
            />
          </div>
          <h1 class="text-4xl font-bold text-slate-400">
            Luna Travel Monetary Services
          </h1>
          <p class="mx-auto w-5/12 md:mx-0 text-slate-200">
            Currency Converter.
          </p>
        </div>
        <div class="mx-auto w-full md:mx-0 md:w-full lg:w-9/12">
          <div
            class="flex flex-col p-10 w-full rounded-xl shadow-xl bg-slate-300"
          >
            <h2 class="mb-5 text-2xl font-bold text-left text-slate-800">
              Sigin
            </h2>
            <form @submit.prevent="login()" class="w-full">
              <div id="input" class="flex flex-col my-5 w-full">
                <label for="username" class="mb-2 text-slate-700"
                  >Username</label
                >
                <input
                  type="text"
                  placeholder="Please insert your username"
                  v-model="username"
                  class="py-3 px-4 rounded-lg border-2 border-gray-100 appearance-none focus:ring-2 focus:ring-green-600 focus:shadow-lg focus:outline-none placeholder-slate-400"
                />
              </div>
              <div id="input" class="flex flex-col my-5 w-full">
                <label for="password" class="mb-2 text-slate-700"
                  >Password</label
                >
                <input
                  type="password"
                  placeholder="Please insert your password"
                  v-model="password"
                  class="py-3 px-4 rounded-lg border-2 border-gray-100 appearance-none focus:ring-2 focus:ring-green-600 focus:shadow-lg focus:outline-none placeholder-slate-400"
                />
              </div>
              <div id="button" class="flex flex-col my-5 w-full">
                <button
                  type="submit"
                  class="py-4 w-full text-green-100 bg-green-500 rounded-lg"
                >
                  <div class="flex flex-row justify-center items-center">
                    <div class="mr-2">
                      <svg
                        class="w-6 h-6"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"
                        ></path>
                      </svg>
                    </div>
                    <div class="font-bold">Sigin</div>
                  </div>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
const username = ref("");
const password = ref("");
let authToken = ref("");
const isSignUp = ref(false);

const login = async () => {
  console.log(username.value);
  console.log(password.value);
  authToken = "#$@$%#%^@%";
  navigateTo("/");
};

// onMounted(() => {
//   watchEffect(() => {
//     if (username.value) {
//       navigateTo("/");
//     }
//   });
// });

definePageMeta({
  layout: false,
});
</script>

<style lang="scss" scoped></style>
