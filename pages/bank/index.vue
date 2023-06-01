<template>
  <div class="grid-2cols">
    <!-- left -->
    <div class="grid-left">
      <h2 class="form-title">{{ $("BANK") }}</h2>
      <form @submit.preven="submit()">
        <section class="form-section">
          <span class="form-label">{{ $("BANK_NAME") }}</span>
          <input
            placeholder=""
            v-model="name"
            inputType="text"
            :error="error && error.type == 'name' ? error.message : ''"
            class="form-input"
          />
        </section>
        <section class="form-section">
          <span class="form-label">{{ $("BANK_AGENCY") }}</span>
          <input
            placeholder=""
            v-model="agency"
            inputType="text"
            :error="error && error.type == 'agency' ? error.message : ''"
            class="form-input"
          />
        </section>
        <section class="form-section">
          <span class="form-label">{{ $("BANK_ACCOUNT") }}</span>
          <input
            placeholder=""
            v-model="account"
            inputType="text"
            :error="error && error.type == 'account' ? error.message : ''"
            class="form-input"
          />
        </section>
        <div class="grid-buttons">
          <button class="button-red">Cancel</button>
          <button class="button-green" :disabled="isWorking" type="submit">
            Save
          </button>
        </div>
      </form>
    </div>

    <!-- right -->
    <div class="grid-right">
      <table class="t-table">
        <thead class="t-thead">
          <tr>
            <th>Bank</th>
            <th>Agency</th>
            <th>Account</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="b in banks.data" :key="b.id" class="tr-line">
            <td>{{ b.name }}</td>
            <td>{{ b.agency }}</td>
            <td>{{ b.account }}</td>
            <td class="td-gap-icons">
              <Icon
                name="mdi-light:delete"
                class="transition duration-200 ease-in-out hover:scale-125"
                color="green"
                size="24px"
                @click="deleteBank(b['id'])"
              />
              <Icon
                name="mdi-light:pencil"
                class="transition duration-200 ease-in-out hover:scale-125"
                color="red"
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
definePageMeta({
  middleware: "auth",
});

// useHead({
//   title: {{$("BANK")},
// });

let bankid = ref(null);
let name = ref(null);
let agency = ref(null);
let account = ref(null);

let currentBank = ref(null);

let isUpdate = ref(false);
let isWorking = ref(false);
let error = ref(null);

let banks = ref([]);

banks.value = await useFetch("/api/bank/getall");

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
