<template>
  <Teleport to="body">
    <transition
      enter-active-class="transition ease-out duration-300"
      enter-from-class="opacity-0"
      enter-to-class="opacity-100"
      leave-active-class="transition ease-in duration-200"
      leave-from-class="opacity-100"
      leave-to-class="opacity-0"
    >
      <div
        v-if="modelValue"
        class="fixed inset-0 backdrop-blur-sm bg-black/30 flex items-center justify-center p-4 z-50"
        @click.self="closeModal"
      >
        <div
          class="bg-white rounded-lg shadow-xl max-w-md w-full p-6 transform transition-all"
          :class="modelValue ? 'scale-100 opacity-100' : 'scale-95 opacity-0'"
        >
          <div class="flex justify-between items-center mb-4">
            <h3 class="text-2xl font-bold text-gray-800">Связаться с нами</h3>
            <button
              @click="closeModal"
              class="text-gray-500 hover:text-gray-700 focus:outline-none"
            >
              <svg
                class="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            </button>
          </div>

          <form @submit.prevent="submitForm">
            <div class="mb-4">
              <label for="name" class="block text-gray-700 font-medium mb-2"
                >ФИО</label
              >
              <input
                type="text"
                id="name"
                v-model="form.name"
                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                required
              />
            </div>

            <div class="mb-4">
              <label for="phone" class="block text-gray-700 font-medium mb-2"
                >Номер телефона</label
              >
              <input
                type="tel"
                id="phone"
                v-model="form.phone"
                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                required
              />
            </div>

            <div class="mb-6">
              <label
                for="description"
                class="block text-gray-700 font-medium mb-2"
                >Описание заказа</label
              >
              <textarea
                id="description"
                v-model="form.description"
                rows="4"
                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                required
              ></textarea>
            </div>

            <div class="flex justify-end">
              <button
                type="button"
                @click="closeModal"
                class="px-4 py-2 mr-2 text-gray-700 bg-gray-200 rounded-md hover:bg-gray-300 focus:outline-none transition-colors"
              >
                Отмена
              </button>
              <button
                type="submit"
                class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none transition-colors"
              >
                Отправить
              </button>
            </div>
          </form>
        </div>
      </div>
    </transition>
  </Teleport>
</template>

<script setup>
const props = defineProps({
  modelValue: {
    type: Boolean,
    default: false,
  },
});

const emit = defineEmits(["update:modelValue", "submit"]);

// Данные формы
const form = ref({
  name: "",
  phone: "",
  description: "",
});

// Закрыть модальное окно
const closeModal = () => {
  emit("update:modelValue", false);
};

// Отправка формы
const submitForm = () => {
  emit("submit", { ...form.value });

  // Очистка формы после отправки
  form.value = {
    name: "",
    phone: "",
    description: "",
  };

  // Закрыть модальное окно после отправки
  closeModal();
};

// Блокировка прокрутки страницы, когда модальное окно открыто
watch(
  () => props.modelValue,
  (newVal) => {
    if (newVal) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
  }
);

// Убедимся, что scroll разблокируется при размонтировании компонента
onUnmounted(() => {
  document.body.style.overflow = "";
});
</script>
