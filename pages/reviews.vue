<template>
  <main class="min-h-screen bg-gray-100 py-12">
    <!-- Шапка страницы -->
    <div class="container mx-auto px-4 mb-10">
      <h1 class="text-4xl md:text-5xl font-bold text-center text-gray-800 mb-4">
        Отзывы наших клиентов
      </h1>
      <p class="text-xl text-center text-gray-600 max-w-3xl mx-auto">
        Узнайте, что думают о нашей работе те, кто уже воспользовался услугами
        мастерской
      </p>
    </div>

    <!-- Контейнер для отзывов -->
    <div class="container mx-auto px-4 mb-10">
      <!-- Пример отзыва -->
      <div class="bg-white rounded-lg shadow-lg p-6 mb-6">
        <div class="flex justify-between items-start mb-4">
          <div>
            <h3 class="text-lg font-semibold text-gray-800">Анна Сергеева</h3>
            <p class="text-gray-500 text-sm">12 марта 2023</p>
          </div>
          <div class="flex items-center">
            <span class="text-yellow-500 mr-1">★★★★★</span>
            <span class="text-gray-700">5.0</span>
          </div>
        </div>
        <p class="text-gray-600">
          Заказывала гравировку на деревянной шкатулке в подарок маме.
          Получилось превосходно! Рисунок очень четкий, работу выполнили даже
          раньше обещанного срока. Мама была в восторге от подарка. Обязательно
          обращусь еще!
        </p>
      </div>
    </div>

    <!-- Кнопка "Оставить отзыв" -->
    <div class="container mx-auto px-4 text-center mb-10">
      <button
        @click="showReviewForm = true"
        class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-8 rounded-lg transition-colors text-lg"
      >
        Оставить отзыв
      </button>
    </div>

    <!-- Модальное окно с формой отзыва -->
    <div
      v-if="showReviewForm"
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
            v-model="reviewForm.name"
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
                @click="reviewForm.rating = n"
                class="text-2xl focus:outline-none"
                :class="
                  n <= reviewForm.rating ? 'text-yellow-500' : 'text-gray-300'
                "
              >
                ★
              </button>
            </template>
          </div>
        </div>

        <div class="mb-6">
          <label
            class="block text-gray-700 text-sm font-bold mb-2"
            for="review"
          >
            Ваш отзыв
          </label>
          <textarea
            id="review"
            v-model="reviewForm.text"
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline h-32"
            placeholder="Расскажите о вашем опыте"
          ></textarea>
        </div>

        <div class="flex justify-end gap-4">
          <button
            @click="showReviewForm = false"
            class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
          >
            Отмена
          </button>
          <button
            @click="submitReview"
            class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
          >
            Отправить
          </button>
        </div>
      </div>
    </div>
  </main>
</template>

<script setup>
// Состояние для формы отзыва
const showReviewForm = ref(false);
const reviewForm = reactive({
  name: "",
  rating: 5,
  text: "",
});

// Обработчик отправки отзыва
const submitReview = () => {
  console.log("Отправлен отзыв:", reviewForm);
  alert("Спасибо за ваш отзыв! Он будет опубликован после модерации.");
  showReviewForm.value = false;
  // Сбрасываем форму
  reviewForm.name = "";
  reviewForm.rating = 5;
  reviewForm.text = "";
};
</script>
