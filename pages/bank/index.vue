<template>
  <div id="bank" class="grid grid-cols-2 p-2 mx-auto bg-yellow-400">
    <!-- Form Section -->
    <dir class="p-4 rounded-xl border shadow-lg border-slate-300 bg-slate-400">
      <h2 class="mb-3 text-xl font-medium tracking-wider text-slate-800">
        Bank Form
      </h2>
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
      <!-- Buttons Section -->
      <div class="grid grid-cols-2 gap-2">
        <button
          class="block py-3 px-6 mt-3 w-full text-lg font-semibold text-white bg-gray-800 rounded-lg shadow-xl hover:text-white hover:bg-black">
          Register
        </button>
        <button
          class="block py-3 px-6 mt-3 w-full text-lg font-semibold text-white bg-gray-800 rounded-lg shadow-xl hover:text-white hover:bg-black">
          Register
        </button>
      </div>
    </dir>
    <!-- Gird Section -->
    <div class="p-4 rounded-xl border shadow-lg border-slate-300 bg-slate-400">
      <table class="w-full bg-white table-auto table-striped border-collapse: collpase">
        <thead class="bg-slate-700 text-slate-300">
          <tr class="align-left items-left">
            <th>Bank</th>
            <th>Agency</th>
            <th>Account</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody class="w-full">
          <tr v-for="(b, index) in banks" :key="index">
            <td>{{ b["name"] }}</td>
            <td>{{ b["agency"] }}</td>
            <td>{{ b["account"] }}</td>
            <td class="flex gap-4 p-2">
              <Trash2 class="transition duration-200 ease-in-out hover:scale-125" color="red"
                @click="deleteBank(b['id'])" />
              <Edit class="transition duration-200 ease-in-out hover:scale-125" color="green"
                @click="editBank(b['id'])" />
            </td>
          </tr>
        </tbody>
      </table>
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
