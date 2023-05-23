<template>
  <div id="bank" class="container grid grid-cols-2 gap-2 p-2 mx-auto">
    <!-- Form Section -->
    <dir class="p-2 rounded-xl border shadow-lg border-slate-300 bg-slate-400">
      <h2 class="mb-2 text-xl font-medium tracking-wider text-slate-800">
        Bank Form
      </h2>
      <div class="mx-auto max-w-lg">
        <div class="py-1">
          <span class="px-1 text-sm text-gray-600">Bank Name</span>
          <input
            placeholder=""
            type="text"
            class="block py-2 px-3 w-full placeholder-gray-600 text-black bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md"
          />
        </div>
        <div class="py-1">
          <span class="px-1 text-sm text-gray-600">Agency</span>
          <input
            placeholder=""
            type="text"
            class="block py-2 px-3 w-full placeholder-gray-600 text-black bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md"
          />
        </div>
        <div class="py-1">
          <span class="px-1 text-sm text-gray-600">Account Number</span>
          <input
            placeholder=""
            type="text"
            class="block py-2 px-3 w-full placeholder-gray-600 text-black bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md"
          />
        </div>
      </div>
      <!-- Buttons Section -->
      <div class="grid grid-cols-2 gap-2">
        <button
          class="block py-3 px-6 mt-3 w-full text-lg font-semibold text-white bg-gray-800 rounded-lg shadow-xl hover:text-white hover:bg-black"
        >
          Register
        </button>
        <button
          class="block py-3 px-6 mt-3 w-full text-lg font-semibold text-white bg-gray-800 rounded-lg shadow-xl hover:text-white hover:bg-black"
        >
          Register
        </button>
      </div>
    </dir>
    <!-- Gird Section -->
    <div class="p-4 rounded-xl border shadow-lg border-slate-300 bg-slate-400">
      <table
        class="w-full bg-white table-auto table-striped border-collapse: collpase"
      >
        <thead class="bg-slate-700 text-slate-300">
          <tr class="align-left items-left">
            <th>Bank</th>
            <th>Agency</th>
            <th>Account</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody class="w-full">
          <tr v-for="b in banks.data" :key="b.id">
            <td>{{ b.name }}</td>
            <td>{{ b.agency }}</td>
            <td>{{ b.account }}</td>
            <td class="flex gap-4 p-2">
              <Icon
                name="mdi-light:delete"
                class="transition duration-200 ease-in-out hover:scale-125"
                color="red"
                size="24px"
                @click="deleteBank(b['id'])"
              />
              <Icon
                name="mdi-light:pencil"
                class="transition duration-200 ease-in-out hover:scale-125"
                color="green"
                size="24px"
                @click="editBank(b['id'])"
              />
            </td>
          </tr>
        </tbody>
      </table>
      <div>P A G I N G</div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { notify } from "@kyvg/vue3-notification";

useHead({
  title: "Bank Management",
});

const uri = "http://localhost:9090/api/v1/bank";
// const uri = "https://jsonplaceholder.typicode.com/posts"
// const { data: banks } = await useAsyncData("banks", () => $fetch(uri));
const { data: banks } = await useFetch(uri);
console.log(banks.data);
</script>

<style lang="scss" scoped></style>
