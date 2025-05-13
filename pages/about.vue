<template>
  <main class="min-h-screen bg-gray-100 py-12">
    <!-- Шапка страницы -->
    <div class="container mx-auto px-4 mb-12">
      <h1 class="text-4xl md:text-5xl font-bold text-center text-gray-800 mb-4">
        О нашей мастерской
      </h1>
      <p class="text-xl text-center text-gray-600 max-w-3xl mx-auto">
        Более 7 лет создаем уникальные изделия с помощью современных технологий
        лазерной гравировки
      </p>
    </div>

    <!-- Основной контент -->
    <div class="container mx-auto px-4">
      <!-- История компании -->
      <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
        <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">
          Наша история
        </h2>

        <p class="text-gray-600 mb-4">
          Мастерская лазерной гравировки была основана в 2016 году группой
          энтузиастов, увлеченных современными технологиями обработки
          материалов. Начав с небольшого помещения и одного лазерного станка, мы
          постепенно расширили производство и сегодня являемся одной из ведущих
          компаний в своей отрасли.
        </p>

        <p class="text-gray-600 mb-4">
          За годы работы мы выполнили более 5000 заказов различной сложности: от
          простых сувениров до эксклюзивных корпоративных подарков и элементов
          декора. Наша команда постоянно совершенствует навыки и осваивает новые
          техники гравировки, чтобы предложить клиентам лучшие решения.
        </p>
      </div>

      <!-- Команда -->
      <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
        <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">
          Наша команда
        </h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="text-center">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Михаил Петров
            </h3>
            <p class="text-gray-700 font-medium mb-2">
              Руководитель мастерской
            </p>
            <p class="text-gray-600">
              Более 10 лет опыта в сфере лазерной обработки материалов
            </p>
          </div>

          <div class="text-center">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Елена Иванова
            </h3>
            <p class="text-gray-700 font-medium mb-2">Главный дизайнер</p>
            <p class="text-gray-600">
              Создает уникальные дизайны и воплощает идеи клиентов
            </p>
          </div>

          <div class="text-center">
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Олег Сидоров
            </h3>
            <p class="text-gray-700 font-medium mb-2">Технический специалист</p>
            <p class="text-gray-600">
              Отвечает за работу оборудования и качество гравировки
            </p>
          </div>
        </div>
      </div>

      <!-- Принципы работы -->
      <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
        <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">
          Наши принципы
        </h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div>
            <ul class="list-disc pl-5 text-gray-600 space-y-3">
              <li>
                <span class="font-semibold">Качество</span> — используем только
                лучшие материалы и современное оборудование
              </li>
              <li>
                <span class="font-semibold">Точность</span> — выполняем работу с
                максимальной детализацией
              </li>
              <li>
                <span class="font-semibold">Креативность</span> — находим
                нестандартные решения для сложных задач
              </li>
            </ul>
          </div>

          <div>
            <ul class="list-disc pl-5 text-gray-600 space-y-3">
              <li>
                <span class="font-semibold">Честность</span> — прозрачное
                ценообразование без скрытых платежей
              </li>
              <li>
                <span class="font-semibold">Ответственность</span> — соблюдаем
                сроки и всегда на связи
              </li>
              <li>
                <span class="font-semibold">Индивидуальный подход</span> —
                учитываем все пожелания каждого клиента
              </li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Призыв к действию -->
      <div class="text-center">
        <h2 class="text-3xl font-bold mb-6 text-gray-800">
          Давайте работать вместе!
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
