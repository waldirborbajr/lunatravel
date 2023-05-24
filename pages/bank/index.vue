<template>
  <div id="city" class="grid grid-cols-2 gap-2 p-2 mx-auto">
    <!-- left -->
    <div class="p-4 rounded-md bg-slate-400">
      <h2 class="mb-2 text-xl font-medium tracking-wider text-slate-800">
        Bank Management
      </h2>
      <form @submit.preven="submit()">
        <section class="mb4-px-2">
          <span class="px-1 text-sm">Bank Name</span>
          <input
            placeholder=""
            v-model="name"
            inputType="text"
            :error="error && error.type == 'name' ? error.message : ''"
            class="block p-1 w-full rounded-lg border focus:border-blue-900 rounder border-slate-500"
          />
        </section>
        <section class="mb4-px-2">
          <span class="px-1 text-sm">Agency</span>
          <input
            placeholder=""
            v-model="agency"
            inputType="text"
            :error="error && error.type == 'agency' ? error.message : ''"
            class="block p-1 w-full rounded-lg border focus:border-blue-900 rounder border-slate-500"
          />
        </section>
        <section class="mb4-px-2">
          <span class="px-1 text-sm">Account</span>
          <input
            placeholder=""
            v-model="account"
            inputType="text"
            :error="error && error.type == 'account' ? error.message : ''"
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
      </form>
    </div>

    <!-- right -->
    <div class="p-4 bg-slate-400 rounded-md">
      <table class="min-w-full text-sm font-light text-left">
        <thead
          class="font-medium border-b bg-slate-800 dark:border-neutral-500"
        >
          <tr>
            <th>Bank</th>
            <th>Agency</th>
            <th>Account</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <tr
            v-for="b in banks.data"
            :key="b.id"
            class="border-b dark:border-neutral-500"
          >
            <td>{{ b.name }}</td>
            <td>{{ b.agency }}</td>
            <td>{{ b.account }}</td>
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

<script setup lang="ts">
useHead({
  title: "Bank Management",
});

let bankid = ref(null);
let name = ref(null);
let agency = ref(null);
let account = ref(null);

let currentBank = ref(null);

let isUpdate = ref(false);
let isWorking = ref(false);
let error = ref(null);

let banks = ref([]);

// onBeforeMount(async () => {
banks.value = await useFetch("/api/bank/getall");
// const { data: banks } = await useFetch("/api/prisma/get-all-banks");
// console.log(banks);
// setTimeout(() => {
//   console.log(" loading ... ");
// }, 2000);
// });

const deleteBank = async (id: Number) => {
  await useFetch(`/api/bank/delete/${id}`, {
    method: "DELETE",
  });
  banks.value = await useFetch("/api/bank/getall");
};

const editBank = async (id: BigInt) => {
  currentBank.value = await useFetch(`/api/bank/getone/${id}`);

  if (currentBank.value.data) {
    bankid.value = currentBank.value.data.id;
    name.value = currentBank.value.data.name;
    agency.value = currentBank.value.data.agency;
    account.value = currentBank.value.data.account;

    isUpdate.value = true;
  }

  // userStore.isLoading = false;
};

const submit = async () => {
  isWorking.value = true;
  error.value = null;

  if (!name.value) {
    error.value = {
      type: "name",
      message: "A name is required",
    };
  } else if (!agency.value) {
    error.value = {
      type: "agency",
      message: "An agency code is required",
    };
  } else if (!account.value) {
    error.value = {
      type: "account",
      message: "Aa account code is required",
    };
  }

  if (error.value) {
    isWorking.value = false;
    return;
  }

  if (isUpdate.value) {
    await useFetch(`/api/bank/update/${bankid.value}`, {
      method: "PATCH",
      body: {
        id: bankid.value,
        name: name.value,
        agency: agency.value,
        account: account.value,
      },
    });
  } else {
    await useFetch(`/api/bank/create/`, {
      method: "POST",
      body: {
        name: name.value,
        agency: agency.value,
        account: account.value,
      },
    });
  }

  isWorking.value = false;
};
</script>

<style lang="scss" scoped></style>
