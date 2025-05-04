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
        @click="showReviewModal = true"
        class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-8 rounded-lg transition-colors text-lg"
      >
        Оставить отзыв
      </button>
    </div>

    <!-- Модальное окно с формой отзыва -->
    <ReviewModal v-model="showReviewModal" @submit="handleReviewSubmit" />
  </main>
</template>

<script setup>
// Состояние для модального окна с формой отзыва
const showReviewModal = ref(false);

// Обработчик отправки отзыва
const handleReviewSubmit = (formData) => {
  console.log("Отправлен отзыв:", formData);
  alert("Спасибо за ваш отзыв! Он будет опубликован после модерации.");
};
</script>
