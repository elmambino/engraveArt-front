<template>
  <main class="min-h-screen bg-gray-100 py-12">
    <!-- Шапка страницы -->
    <div class="container mx-auto px-4 mb-12">
      <h1 class="text-4xl md:text-5xl font-bold text-center text-gray-800 mb-4">
        Наши услуги
      </h1>
      <p class="text-xl text-center text-gray-600 max-w-3xl mx-auto">
        Профессиональная лазерная гравировка на различных материалах с
        индивидуальным подходом к каждому заказу
      </p>
    </div>

    <!-- Основной контент с услугами -->
    <div class="container mx-auto px-4">
      <!-- Категории услуг -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-16">
        <!-- Гравировка на металле -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на металле
          </h2>
          <p class="text-gray-600 mb-4 leading-relaxed">
            Создаем долговечные и точные изображения на металлических
            поверхностях с помощью современного лазерного оборудования
          </p>
          <ul class="space-y-2 mb-4">
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Персонализация ювелирных изделий</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Гравировка на ножах и столовых приборах</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Нанесение логотипов на металлические предметы</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Создание памятных табличек и бейджей</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Маркировка инструментов и деталей</span>
            </li>
          </ul>
          <p class="text-gray-700 font-medium">Цена: от 800 руб.</p>
        </div>

        <!-- Гравировка на дереве -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на дереве
          </h2>
          <p class="text-gray-600 mb-4 leading-relaxed">
            Превращаем деревянные изделия в уникальные предметы искусства с
            помощью техники лазерной гравировки и резки
          </p>
          <ul class="space-y-2 mb-4">
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Изготовление сувениров и подарков</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Персонализация деревянной посуды</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Создание декоративных панно и картин</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Нанесение узоров на мебель</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Изготовление деревянных открыток и приглашений</span>
            </li>
          </ul>
          <p class="text-gray-700 font-medium">Цена: от 600 руб.</p>
        </div>

        <!-- Гравировка на стекле -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на стекле
          </h2>
          <p class="text-gray-600 mb-4 leading-relaxed">
            Создаем изящные и элегантные рисунки на стеклянных поверхностях,
            которые придают изделиям неповторимый вид
          </p>
          <ul class="space-y-2 mb-4">
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Нанесение узоров на бокалы и фужеры</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Гравировка на зеркалах</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Персонализация стеклянных наград и сувениров</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Декорирование стеклянной посуды</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Создание фоторамок с гравировкой</span>
            </li>
          </ul>
          <p class="text-gray-700 font-medium">Цена: от 900 руб.</p>
        </div>

        <!-- Гравировка на коже -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на коже
          </h2>
          <p class="text-gray-600 mb-4 leading-relaxed">
            Наносим изысканные рисунки и тексты на кожаные изделия, придавая им
            индивидуальность и особый шарм
          </p>
          <ul class="space-y-2 mb-4">
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Персонализация кошельков и портмоне</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Нанесение монограмм на кожаные аксессуары</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Гравировка на обложках ежедневников</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Создание уникальных ремней с гравировкой</span>
            </li>
            <li class="flex items-start">
              <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
              <span class="text-gray-600 leading-relaxed">Декорирование кожаных сумок и рюкзаков</span>
            </li>
          </ul>
          <p class="text-gray-700 font-medium">Цена: от 750 руб.</p>
        </div>
      </div>

      <!-- Дополнительные услуги -->
      <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
        <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">
          Дополнительные услуги
        </h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <!-- Дизайн -->
          <div>
            <h3 class="text-xl font-semibold mb-3 text-gray-800">
              Разработка дизайна
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Наши дизайнеры помогут вам создать уникальный проект для
              гравировки, учитывая все ваши пожелания и особенности материала
            </p>
            <p class="mt-3 text-gray-700 font-medium">Цена: от 500 руб.</p>
          </div>

          <!-- Срочные заказы -->
          <div>
            <h3 class="text-xl font-semibold mb-3 text-gray-800">
              Срочное выполнение
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Если вам нужно получить заказ в кратчайшие сроки, мы готовы
              выполнить работу в ускоренном режиме без потери качества
            </p>
            <p class="mt-3 text-gray-700 font-medium">
              Наценка: +50% к стоимости
            </p>
          </div>

          <!-- Доставка -->
          <div>
            <h3 class="text-xl font-semibold mb-3 text-gray-800">Доставка</h3>
            <p class="text-gray-600 leading-relaxed">
              Предлагаем услуги доставки готовых изделий по городу и отправку в
              другие регионы через надежные транспортные компании
            </p>
            <p class="mt-3 text-gray-700 font-medium">Цена: от 300 руб.</p>
          </div>
        </div>
      </div>

      <!-- Призыв к действию -->
      <div class="text-center">
        <h2 class="text-3xl font-bold mb-6 text-gray-800">
          Хотите заказать услугу лазерной гравировки?
        </h2>
        <button
          @click="showModal = true"
          class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-8 rounded-lg transition-colors text-lg cursor-pointer"
          aria-label="Открыть форму обратной связи"
        >
          Оставить заявку
        </button>
      </div>
    </div>

    <!-- Модальное окно -->
    <ContactModal v-model="showModal" @submit="handleFormSubmit" />
  </main>
</template>

<script setup>
// Состояние для модального окна
const showModal = ref(false)

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
