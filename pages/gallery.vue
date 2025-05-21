<template>
  <main class="min-h-screen bg-gray-100 py-12">
    <!-- Шапка галереи -->
    <div class="container mx-auto px-4 mb-12">
      <h1 class="text-4xl md:text-5xl font-bold text-center text-gray-800 mb-4">
        Галерея наших работ
      </h1>
      <p class="text-xl text-center text-gray-600 max-w-3xl mx-auto">
        Это реальные примеры наших работ. Каждое изделие уникально и создано с
        особым вниманием к деталям. Мы гордимся качеством нашей гравировки и
        рады поделиться результатами с вами
      </p>
    </div>

    <!-- Галерея изображений -->
    <div class="container mx-auto px-4 mb-16">
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <!-- Карточка 1 -->
        <div class="overflow-hidden bg-white rounded-lg shadow-lg group">
          <div class="relative h-64 overflow-hidden">
            <img
              src="/assets/images/example1.JPG"
              alt="Гравировка на тактическом ноже"
              class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            />
            <div
              class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-500"
            ></div>
          </div>
          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Гравировка на задней панели телефона
            </h3>
            <p class="text-gray-600 mb-3">
              Персонализированная гравировка с узором на задней панели телефона
            </p>
            <div class="flex justify-between items-center">
              <span
                class="inline-block bg-gray-200 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                Металл
              </span>
              <span class="text-blue-600 font-medium">Сталь</span>
            </div>
          </div>
        </div>

        <!-- Карточка 2 -->
        <div class="overflow-hidden bg-white rounded-lg shadow-lg group">
          <div class="relative h-64 overflow-hidden">
            <img
              src="assets/images/example2.JPG"
              alt="Деревянная шкатулка с орнаментом"
              class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            />
            <div
              class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-500"
            ></div>
          </div>
          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Гравировка на любом металле
            </h3>
            <p class="text-gray-600 mb-3">
              Точная надпись, выполненная с особой детализацией на металлической
              поверхности
            </p>
            <div class="flex justify-between items-center">
              <span
                class="inline-block bg-gray-200 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                Металл
              </span>
              <span class="text-blue-600 font-medium">Сталь</span>
            </div>
          </div>
        </div>

        <!-- Карточка 3 -->
        <div class="overflow-hidden bg-white rounded-lg shadow-lg group">
          <div class="relative h-64 overflow-hidden">
            <img
              src="assets/images/example3.JPG"
              alt="Стеклянная награда"
              class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            />
            <div
              class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-500"
            ></div>
          </div>
          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Гравировка на кожанной бирке
            </h3>
            <p class="text-gray-600 mb-3">
              Гравировка на кожанной бирке для повышения узнаваемости вашего
              бренда
            </p>
            <div class="flex justify-between items-center">
              <span
                class="inline-block bg-gray-200 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                Кожа
              </span>
              <span class="text-blue-600 font-medium">Кожа</span>
            </div>
          </div>
        </div>

        <!-- Карточка 4 -->
        <div class="overflow-hidden bg-white rounded-lg shadow-lg group">
          <div class="relative h-64 overflow-hidden">
            <img
              src="assets/images/example4.JPG"
              alt="Кожаный ежедневник"
              class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            />
            <div
              class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-500"
            ></div>
          </div>
          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Гравировка на любом металле
            </h3>
            <p class="text-gray-600 mb-3">
              Точная надпись, выполненная с особой детализацией на металлической
              поверхности
            </p>
            <div class="flex justify-between items-center">
              <span
                class="inline-block bg-gray-200 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                Металл
              </span>
              <span class="text-blue-600 font-medium">Сталь</span>
            </div>
          </div>
        </div>

        <!-- Карточка 5 -->
        <div class="overflow-hidden bg-white rounded-lg shadow-lg group">
          <div class="relative h-64 overflow-hidden">
            <img
              src="/assets/images/steklo.JPG"
              alt="Гравировка на тактическом ноже"
              class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            />
            <div
              class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-500"
            ></div>
          </div>
          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Гравировка на стекле
            </h3>
            <p class="text-gray-600 mb-3">
              Утонченная гравировка с индивидуальным узором на стеклянной поверхности
            </p>
            <div class="flex justify-between items-center">
              <span
                class="inline-block bg-gray-200 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                Стекло
              </span>
              <span class="text-blue-600 font-medium">Стекло</span>
            </div>
          </div>
        </div>

        <!-- Карточка 6 -->
        <div class="overflow-hidden bg-white rounded-lg shadow-lg group">
          <div class="relative h-64 overflow-hidden">
            <img
              src="/assets/images/derevo.JPG"
              alt="Гравировка на тактическом ноже"
              class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            />
            <div
              class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-500"
            ></div>
          </div>
          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Гравировка на дереве
            </h3>
            <p class="text-gray-600 mb-3">
              Ювелирная гравировка на деревянном изделии с вашим дизайном
            </p>
            <div class="flex justify-between items-center">
              <span
                class="inline-block bg-gray-200 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                Дерево
              </span>
              <span class="text-blue-600 font-medium">Дуб</span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Простая кнопка для возврата -->
    <div class="text-center mb-12">
      <NuxtLink
        to="/"
        class="inline-block px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg transition-colors duration-300"
      >
        Вернуться на главную
      </NuxtLink>
    </div>

    <!-- Модальное окно формы связи, оставляем для переиспользования -->
    <ContactModal v-model="showModal" @submit="handleFormSubmit" />
  </main>
</template>

<script setup>
// Простое состояние для модального окна
const showModal = ref(false);

// Обработчик отправки формы
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
