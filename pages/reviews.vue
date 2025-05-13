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
      <!-- Загрузка отзывов -->
      <div v-if="isLoading" class="text-center py-10">
        <p class="text-gray-600">Загрузка отзывов...</p>
      </div>

      <!-- Ошибка загрузки -->
      <div
        v-else-if="error"
        class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-6"
      >
        <p>{{ error }}</p>
        <button
          @click="fetchReviews"
          class="mt-2 text-blue-600 hover:underline"
        >
          Попробовать снова
        </button>
      </div>

      <!-- Нет отзывов -->
      <div v-else-if="reviews.length === 0" class="text-center py-10">
        <p class="text-gray-600">
          Пока нет отзывов. Будьте первым, кто оставит отзыв!
        </p>
      </div>

      <!-- Список отзывов -->
      <template v-else>
        <div
          v-for="review in reviews"
          :key="review._id"
          class="bg-white rounded-lg shadow-lg p-6 mb-6"
        >
          <div class="flex justify-between items-start mb-4">
            <div>
              <h3 class="text-lg font-semibold text-gray-800">
                {{ review.name }}
              </h3>
              <p class="text-gray-500 text-sm">
                {{ formatDate(review.createdAt) }}
              </p>
            </div>
            <div class="flex items-center">
              <span class="text-yellow-500 mr-1">{{
                getStarsDisplay(review.stars)
              }}</span>
              <span class="text-gray-700">{{ review.stars }}.0</span>
            </div>
          </div>
          <p class="text-gray-600">
            {{ review.text }}
          </p>
        </div>
      </template>
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
const reviews = ref([]);
const isLoading = ref(true);
const error = ref(null);

// Получение отзывов с сервера
const fetchReviews = async () => {
  isLoading.value = true;
  error.value = null;

  try {
    const response = await fetch("http://api.engraveart.space/api/reviews");

    if (!response.ok) {
      throw new Error("Не удалось загрузить отзывы");
    }

    const data = await response.json();
    reviews.value = data;
  } catch (err) {
    console.error("Ошибка при загрузке отзывов:", err);
    error.value =
      "Произошла ошибка при загрузке отзывов. Пожалуйста, попробуйте позже.";
  } finally {
    isLoading.value = false;
  }
};

// Форматирование даты
const formatDate = (dateString) => {
  const date = new Date(dateString);
  return date.toLocaleDateString("ru-RU", {
    year: "numeric",
    month: "long",
    day: "numeric",
  });
};

// Получение отображения звезд
const getStarsDisplay = (stars) => {
  return "★".repeat(stars) + "☆".repeat(5 - stars);
};

// Обработчик отправки отзыва
const handleReviewSubmit = async (formData) => {
  try {
    const response = await fetch("http://api.engraveart.space/api/reviews", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        text: formData.text,
        name: formData.name,
        stars: formData.rating,
      }),
    });

    if (!response.ok) {
      throw new Error("Ошибка при отправке отзыва");
    }

    alert("Спасибо за ваш отзыв! Он будет опубликован после модерации.");

    // Обновляем список отзывов после успешной отправки
    fetchReviews();
  } catch (error) {
    console.error("Ошибка:", error);
    alert(
      "Произошла ошибка при отправке отзыва. Пожалуйста, попробуйте позже."
    );
  }
};

// Загружаем отзывы при монтировании компонента
onMounted(fetchReviews);
</script>
