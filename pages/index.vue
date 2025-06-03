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
              точность и долговечность гравировки
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
              качество каждого проекта
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
              различных материалах
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
            <ul class="space-y-2">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Персонализация подарков и сувениров
                  </p>
                </div>
              </li>
              
              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Создание уникальных изделий на заказ
                  </p>
                </div>
              </li>
              
              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Гравировка логотипов компаний
                  </p>
                </div>
              </li>

              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Нанесение штрих-кодов и QR-кодов
                  </p>
                </div>
              </li>

              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Изготовление именных табличек
                  </p>
                </div>
              </li>
            </ul>
          </div>

          <div>
            <h3 class="text-xl font-semibold mb-3 text-gray-800">
              Почему выбирают нас
            </h3>
            <ul class="space-y-2">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Высокая точность и качество гравировки
                  </p>
                </div>
              </li>
              
              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Индивидуальный подход к каждому заказу
                  </p>
                </div>
              </li>
              
              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Работаем с любыми материалами: металл, дерево, стекло, кожа
                  </p>
                </div>
              </li>

              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Оперативное выполнение заказов
                  </p>
                </div>
              </li>

              <li class="flex items-start">
                <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
                <div>
                  <p class="text-gray-600 leading-relaxed">
                    Доступные цены и система скидок для постоянных клиентов
                  </p>
                </div>
              </li>
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
        phoneNumber: formData.phone, // Теперь это будет строка только из цифр
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
