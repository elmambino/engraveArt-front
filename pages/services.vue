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
          <p class="text-gray-600 mb-4">
            Создаем долговечные и точные изображения на металлических
            поверхностях с помощью современного лазерного оборудования
          </p>
          <ul class="list-disc pl-5 text-gray-600 space-y-2">
            <li>Персонализация ювелирных изделий</li>
            <li>Гравировка на ножах и столовых приборах</li>
            <li>Нанесение логотипов на металлические предметы</li>
            <li>Создание памятных табличек и бейджей</li>
            <li>Маркировка инструментов и деталей</li>
          </ul>
          <p class="mt-4 text-gray-700 font-medium">Цена: от 800 руб.</p>
        </div>

        <!-- Гравировка на дереве -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на дереве
          </h2>
          <p class="text-gray-600 mb-4">
            Превращаем деревянные изделия в уникальные предметы искусства с
            помощью техники лазерной гравировки и резки
          </p>
          <ul class="list-disc pl-5 text-gray-600 space-y-2">
            <li>Изготовление сувениров и подарков</li>
            <li>Персонализация деревянной посуды</li>
            <li>Создание декоративных панно и картин</li>
            <li>Нанесение узоров на мебель</li>
            <li>Изготовление деревянных открыток и приглашений</li>
          </ul>
          <p class="mt-4 text-gray-700 font-medium">Цена: от 600 руб.</p>
        </div>

        <!-- Гравировка на стекле -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на стекле
          </h2>
          <p class="text-gray-600 mb-4">
            Создаем изящные и элегантные рисунки на стеклянных поверхностях,
            которые придают изделиям неповторимый вид
          </p>
          <ul class="list-disc pl-5 text-gray-600 space-y-2">
            <li>Нанесение узоров на бокалы и фужеры</li>
            <li>Гравировка на зеркалах</li>
            <li>Персонализация стеклянных наград и сувениров</li>
            <li>Декорирование стеклянной посуды</li>
            <li>Создание фоторамок с гравировкой</li>
          </ul>
          <p class="mt-4 text-gray-700 font-medium">Цена: от 900 руб.</p>
        </div>

        <!-- Гравировка на коже -->
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-bold mb-4 text-gray-800">
            Гравировка на коже
          </h2>
          <p class="text-gray-600 mb-4">
            Наносим изысканные рисунки и тексты на кожаные изделия, придавая им
            индивидуальность и особый шарм
          </p>
          <ul class="list-disc pl-5 text-gray-600 space-y-2">
            <li>Персонализация кошельков и портмоне</li>
            <li>Нанесение монограмм на кожаные аксессуары</li>
            <li>Гравировка на обложках ежедневников</li>
            <li>Создание уникальных ремней с гравировкой</li>
            <li>Декорирование кожаных сумок и рюкзаков</li>
          </ul>
          <p class="mt-4 text-gray-700 font-medium">Цена: от 750 руб.</p>
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
            <p class="text-gray-600">
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
            <p class="text-gray-600">
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
            <p class="text-gray-600">
              Предлагаем услуги доставки готовых изделий по городу и отправку в
              другие регионы через надежные транспортные компании
            </p>
            <p class="mt-3 text-gray-700 font-medium">Цена: от 300 руб.</p>
          </div>
        </div>
      </div>

      <!-- Процесс работы -->

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
