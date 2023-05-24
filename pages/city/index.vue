<template>
  <div id="city" class="grid grid-cols-2 gap-2 p-2 mx-auto">
    <!-- left -->
    <div class="p-4 bg-gray-600 rounded-md border-green-600 shadow-slate-300">
      LEFT
      <section class="mb4-px-2">
        <span class="px-1 text-sm">Bank Name</span>
        <input
          type="text"
          class="block p-1 w-full rounded-lg border focus:border-blue-900 rounder border-slate-500"
        />
      </section>
      <section class="mb4-px-2">
        <span class="px-1 text-sm">Bank Name</span>
        <input
          type="text"
          class="block p-1 w-full rounded-lg border focus:border-blue-900 rounder border-slate-500"
        />
      </section>
      <section class="mb4-px-2">
        <span class="px-1 text-sm">Bank Name</span>
        <input
          type="text"
          class="block p-1 w-full rounded-lg border focus:border-blue-900 rounder border-slate-500"
        />
      </section>
      <section class="mb4-px-2">
        <span class="px-1 text-sm">Bank Name</span>
        <input
          type="text"
          class="block p-1 w-full rounded-lg border focus:border-blue-900 rounder border-slate-500"
        />
      </section>
      <div class="grid grid-cols-2 gap-2 p-4">
        <button
          class="block p-3 w-full text-lg font-semibold text-white bg-red-800 rounded-lg shadow-xl hover:text-white hover:bg-red-500"
        >
          Cancel
        </button>
        <button
          class="block p-3 w-full text-lg font-semibold text-white bg-green-800 rounded-lg shadow-xl hover:text-white hover:bg-green-500"
          :disabled="isWorking"
          type="submit"
        >
          Register
        </button>
      </div>
    </div>

    <!-- right -->
    <div class="p-4 bg-gray-400 rounded-md border-orange-600 shadow-slate-300">
      RIGHT
      <table class="min-w-full text-sm font-light text-left">
        <thead
          class="font-medium border-b bg-slate-800 dark:border-neutral-500"
        >
          <tr>
            <th>col1</th>
            <th>col2</th>
            <th>col3</th>
            <th>col4</th>
            <th>col5</th>
          </tr>
        </thead>
        <tbody>
          <tr class="border-b dark:border-neutral-500">
            <td>lin1.1</td>
            <td>lin1.2</td>
            <td>lin1.3</td>
            <td>lin1.4</td>
            <td class="flex gap-6">
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
          <tr class="border-b dark:border-neutral-500">
            <td>lin1.1</td>
            <td>lin1.2</td>
            <td>lin1.3</td>
            <td>lin1.4</td>
            <td class="flex gap-6">
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
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style lang="scss" scoped></style>
