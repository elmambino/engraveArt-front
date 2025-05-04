<template>
  <div
    v-if="modelValue"
    class="fixed inset-0 backdrop-blur-sm bg-black/30 flex items-center justify-center z-50 p-4"
  >
    <div class="bg-white rounded-lg shadow-xl p-6 w-full max-w-md">
      <h2 class="text-2xl font-bold mb-4 text-gray-800">Оставить отзыв</h2>

      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
          Ваше имя
        </label>
        <input
          id="name"
          v-model="form.name"
          class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
          type="text"
          placeholder="Введите ваше имя"
        />
      </div>

      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2">
          Оценка
        </label>
        <div class="flex">
          <template v-for="n in 5" :key="n">
            <button
              @click="form.rating = n"
              class="text-2xl focus:outline-none"
              :class="n <= form.rating ? 'text-yellow-500' : 'text-gray-300'"
            >
              ★
            </button>
          </template>
        </div>
      </div>

      <div class="mb-6">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="review">
          Ваш отзыв
        </label>
        <textarea
          id="review"
          v-model="form.text"
          class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline h-32"
          placeholder="Расскажите о вашем опыте"
        ></textarea>
      </div>

      <div class="flex justify-end gap-4">
        <button
          @click="closeModal"
          class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
        >
          Отмена
        </button>
        <button
          @click="submitForm"
          class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
        >
          Отправить
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  modelValue: {
    type: Boolean,
    required: true,
  },
});

const emit = defineEmits(["update:modelValue", "submit"]);

const form = reactive({
  name: "",
  rating: 5,
  text: "",
});

const closeModal = () => {
  emit("update:modelValue", false);
};

const submitForm = () => {
  emit("submit", { ...form });
  // Очищаем форму
  form.name = "";
  form.rating = 5;
  form.text = "";
  // Закрываем модалку
  closeModal();
};
</script>
