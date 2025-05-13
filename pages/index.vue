<template>
  <main class="min-h-screen bg-gray-100 py-12">
    <!-- Шапка с заголовком -->
    <div class="container mx-auto px-4 mb-16">
      <h1 class="text-4xl md:text-5xl font-bold text-center text-gray-800 mb-4">
        Мастерская лазерной гравировки
      </h1>
      <p class="text-xl text-center text-gray-600 max-w-3xl mx-auto">
        Превращаем обычные предметы в произведения искусства с помощью
        современных лазерных технологий
      </p>
    </div>

    <!-- Основной блок с изображениями -->
    <div class="container mx-auto px-4">
      <!-- Первый блок с изображениями в ряд для десктопа, колонкой для мобильных -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-20">
        <!-- Блок с ножом -->
        <div
          class="bg-white rounded-lg overflow-hidden shadow-lg transform transition-transform hover:scale-105"
        >
          <div class="h-64 overflow-hidden">
            <img
              src="assets/images/knife.jpg"
              alt="Лазерная гравировка на ноже"
              class="w-full h-full object-cover"
            />
          </div>
          <div class="p-6">
            <h3 class="text-2xl font-semibold mb-3 text-gray-800">
              Гравировка на металле
            </h3>
            <p class="text-gray-600">
              Создаем уникальные узоры и надписи на ножах, инструментах и других
              металлических изделиях. Наша технология обеспечивает высокую
              точность и долговечность гравировки.
            </p>
          </div>
        </div>

        <!-- Блок с мастером -->
        <div
          class="bg-white rounded-lg overflow-hidden shadow-lg transform transition-transform hover:scale-105 md:translate-y-8"
        >
          <div class="h-64 overflow-hidden">
            <img
              src="assets/images/worker.jpg"
              alt="Мастер лазерной гравировки"
              class="w-full h-full object-cover"
            />
          </div>
          <div class="p-6">
            <h3 class="text-2xl font-semibold mb-3 text-gray-800">
              Опытные мастера
            </h3>
            <p class="text-gray-600">
              Наша команда состоит из профессионалов с многолетним опытом в
              сфере лазерной обработки материалов. Мы гарантируем высокое
              качество каждого проекта.
            </p>
          </div>
        </div>

        <!-- Блок со станком -->
        <div
          class="bg-white rounded-lg overflow-hidden shadow-lg transform transition-transform hover:scale-105"
        >
          <div class="h-64 overflow-hidden">
            <img
              src="assets/images/stanock.jpg"
              alt="Лазерный станок"
              class="w-full h-full object-cover"
            />
          </div>
          <div class="p-6">
            <h3 class="text-2xl font-semibold mb-3 text-gray-800">
              Современное оборудование
            </h3>
            <p class="text-gray-600">
              Используем высокоточные лазерные станки последнего поколения, что
              позволяет выполнять сложные работы с максимальной детализацией на
              различных материалах.
            </p>
          </div>
        </div>
      </div>

      <!-- Описание услуг и преимуществ -->
      <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
        <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">
          Наши услуги
        </h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div>
            <h3 class="text-xl font-semibold mb-3 text-gray-800">
              Что мы предлагаем
            </h3>
            <ul class="list-disc pl-5 text-gray-600 space-y-2">
              <li>Персонализация подарков и сувениров</li>
              <li>Создание уникальных изделий на заказ</li>
              <li>Гравировка логотипов компаний</li>
              <li>Нанесение штрих-кодов и QR-кодов</li>
              <li>Изготовление именных табличек</li>
            </ul>
          </div>

          <div>
            <h3 class="text-xl font-semibold mb-3 text-gray-800">
              Почему выбирают нас
            </h3>
            <ul class="list-disc pl-5 text-gray-600 space-y-2">
              <li>Высокая точность и качество гравировки</li>
              <li>Индивидуальный подход к каждому заказу</li>
              <li>
                Работаем с любыми материалами: металл, дерево, стекло, кожа
              </li>
              <li>Оперативное выполнение заказов</li>
              <li>Доступные цены и система скидок для постоянных клиентов</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Призыв к действию -->
      <div class="text-center">
        <h2 class="text-3xl font-bold mb-6 text-gray-800">
          Готовы превратить вашу идею в реальность?
        </h2>
        <button
          @click="showModal = true"
          class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-8 rounded-lg transition-colors text-lg cursor-pointer"
          aria-label="Открыть форму обратной связи"
        >
          Связаться с нами
        </button>
      </div>
    </div>

    <!-- Модальное окно -->
    <ContactModal v-model="showModal" @submit="handleFormSubmit" />
  </main>
</template>

<script setup>
// Состояние для модального окна
const showModal = ref(false);

// Обработка отправки формы
const handleFormSubmit = async (formData) => {
  try {
    const response = await fetch("http://api.engraveart.space/api/orders", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        customerName: formData.name,
        phoneNumber: formData.phone,
        text: formData.description,
      }),
    });

    if (!response.ok) {
      throw new Error("Ошибка при отправке заявки");
    }

    alert(
      "Ваша заявка успешно отправлена! Мы свяжемся с вами в ближайшее время."
    );
  } catch (error) {
    console.error("Ошибка:", error);
    alert(
      "Произошла ошибка при отправке заявки. Пожалуйста, попробуйте позже."
    );
  }
};
</script>
