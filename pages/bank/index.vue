<template>
  <div id="bank" class="container grid grid-cols-2 gap-2 p-2 mx-auto">
    <!-- Form Section -->
    <form @submit.preven="submit()">
      <dir
        class="p-2 rounded-xl border shadow-lg border-slate-300 bg-slate-400"
      >
        <h2 class="mb-2 text-xl font-medium tracking-wider text-slate-800">
          Bank Form
        </h2>
        <div class="mx-auto max-w-lg">
          <div class="py-1">
            <span class="px-1 text-sm text-gray-600">Bank Name</span>
            <input
              class="block py-2 px-3 w-full placeholder-gray-600 text-black bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md"
              placeholder=""
              v-model="name"
              inputType="text"
              :error="error && error.type == 'name' ? error.message : ''"
            />
          </div>
          <div class="py-1">
            <span class="px-1 text-sm text-gray-600">Agency</span>
            <input
              class="block py-2 px-3 w-full placeholder-gray-600 text-black bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md"
              placeholder=""
              v-model="agency"
              inputType="text"
              :error="error && error.type == 'agency' ? error.message : ''"
            />
          </div>
          <div class="py-1">
            <span class="px-1 text-sm text-gray-600">Account Number</span>
            <input
              class="block py-2 px-3 w-full placeholder-gray-600 text-black bg-white rounded-lg border-2 border-gray-300 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none text-md"
              placeholder=""
              v-model="account"
              inputType="text"
              :error="error && error.type == 'account' ? error.message : ''"
            />
          </div>
        </div>
        <!-- Buttons Section -->
        <div class="grid grid-cols-2 gap-2">
          <button
            class="block py-3 px-6 mt-3 w-full text-lg font-semibold text-white bg-red-800 rounded-lg shadow-xl hover:text-white hover:bg-red-500"
          >
            Cancel
          </button>
          <button
            class="block py-3 px-6 mt-3 w-full text-lg font-semibold text-white bg-green-800 rounded-lg shadow-xl hover:text-white hover:bg-green-500"
            :disabled="isWorking"
            type="submit"
          >
            Register
          </button>
        </div>
      </dir>
    </form>

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
          <!-- <tr v-for="b in banks.data" :key="b.id"> -->
          <tr v-for="b in banks.data" :key="b.id">
            <td class="text-slate-900">{{ b.name }}</td>
            <td class="text-slate-900">{{ b.agency }}</td>
            <td class="text-slate-900">{{ b.account }}</td>
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
banks.value = await useFetch("/api/bank/get-all-banks");
// const { data: banks } = await useFetch("/api/prisma/get-all-banks");
// console.log(banks);
// setTimeout(() => {
//   console.log(" loading ... ");
// }, 2000);
// });

const editBank = async (id: BigInt) => {
  currentBank.value = await useFetch(`/api/bank/get-bank-by-id/${id}`);

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
    console.log(bankid.value);
    await useFetch(`/api/bank/update-bank/${bankid.value}`, {
      method: "PATCH",
      body: {
        id: bankid.value,
        name: name.value,
        agency: agency.value,
        account: account.value,
      },
    });
  } else {
    await useFetch(`/api/bank/create-bank/`, {
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
