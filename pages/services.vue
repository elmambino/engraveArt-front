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
      <!-- Слайдер услуг -->
      <div class="mb-16">
        <h2 class="text-3xl font-bold mb-8 text-gray-800 text-center">
          Категории услуг
        </h2>
        
        <!-- Swiper контейнер -->
        <div class="services-slider-container relative">
          <Swiper
            :modules="modules"
            :slides-per-view="1"
            :space-between="30"
            :pagination="{ clickable: true }"
            :navigation="true"
            :breakpoints="breakpoints"
            class="services-swiper"
          >
            <!-- Слайд 1: Гравировка на металле -->
            <SwiperSlide>
              <div class="bg-white rounded-lg shadow-lg p-8 h-full">
                <div class="flex items-center mb-4">
                  <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center mr-4">
                    <svg class="w-6 h-6 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path>
                    </svg>
                  </div>
                  <h3 class="text-2xl font-bold text-gray-800">
                    Гравировка на металле
                  </h3>
                </div>
                <p class="text-gray-600 mb-4">
                  Создаем долговечные и точные изображения на металлических
                  поверхностях с помощью современного лазерного оборудования
                </p>
                <ul class="list-disc pl-5 text-gray-600 space-y-2 mb-4">
                  <li>Персонализация ювелирных изделий</li>
                  <li>Гравировка на ножах и столовых приборах</li>
                  <li>Нанесение логотипов на металлические предметы</li>
                  <li>Создание памятных табличек и бейджей</li>
                  <li>Маркировка инструментов и деталей</li>
                </ul>
                <p class="text-gray-700 font-medium text-lg">Цена: от 800 руб.</p>
              </div>
            </SwiperSlide>

            <!-- Слайд 2: Гравировка на дереве -->
            <SwiperSlide>
              <div class="bg-white rounded-lg shadow-lg p-8 h-full">
                <div class="flex items-center mb-4">
                  <div class="w-12 h-12 bg-green-100 rounded-lg flex items-center justify-center mr-4">
                    <svg class="w-6 h-6 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z"></path>
                    </svg>
                  </div>
                  <h3 class="text-2xl font-bold text-gray-800">
                    Гравировка на дереве
                  </h3>
                </div>
                <p class="text-gray-600 mb-4">
                  Превращаем деревянные изделия в уникальные предметы искусства с
                  помощью техники лазерной гравировки и резки
                </p>
                <ul class="list-disc pl-5 text-gray-600 space-y-2 mb-4">
                  <li>Изготовление сувениров и подарков</li>
                  <li>Персонализация деревянной посуды</li>
                  <li>Создание декоративных панно и картин</li>
                  <li>Нанесение узоров на мебель</li>
                  <li>Изготовление деревянных открыток и приглашений</li>
                </ul>
                <p class="text-gray-700 font-medium text-lg">Цена: от 600 руб.</p>
              </div>
            </SwiperSlide>

            <!-- Слайд 3: Гравировка на стекле -->
            <SwiperSlide>
              <div class="bg-white rounded-lg shadow-lg p-8 h-full">
                <div class="flex items-center mb-4">
                  <div class="w-12 h-12 bg-purple-100 rounded-lg flex items-center justify-center mr-4">
                    <svg class="w-6 h-6 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z"></path>
                    </svg>
                  </div>
                  <h3 class="text-2xl font-bold text-gray-800">
                    Гравировка на стекле
                  </h3>
                </div>
                <p class="text-gray-600 mb-4">
                  Создаем изящные и элегантные рисунки на стеклянных поверхностях,
                  которые придают изделиям неповторимый вид
                </p>
                <ul class="list-disc pl-5 text-gray-600 space-y-2 mb-4">
                  <li>Нанесение узоров на бокалы и фужеры</li>
                  <li>Гравировка на зеркалах</li>
                  <li>Персонализация стеклянных наград и сувениров</li>
                  <li>Декорирование стеклянной посуды</li>
                  <li>Создание фоторамок с гравировкой</li>
                </ul>
                <p class="text-gray-700 font-medium text-lg">Цена: от 900 руб.</p>
              </div>
            </SwiperSlide>

            <!-- Слайд 4: Гравировка на коже -->
            <SwiperSlide>
              <div class="bg-white rounded-lg shadow-lg p-8 h-full">
                <div class="flex items-center mb-4">
                  <div class="w-12 h-12 bg-orange-100 rounded-lg flex items-center justify-center mr-4">
                    <svg class="w-6 h-6 text-orange-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zM21 5a2 2 0 00-2-2h-4a2 2 0 00-2 2v12a4 4 0 004 4h4a2 2 0 002-2V5z"></path>
                    </svg>
                  </div>
                  <h3 class="text-2xl font-bold text-gray-800">
                    Гравировка на коже
                  </h3>
                </div>
                <p class="text-gray-600 mb-4">
                  Наносим изысканные рисунки и тексты на кожаные изделия, придавая им
                  индивидуальность и особый шарм
                </p>
                <ul class="list-disc pl-5 text-gray-600 space-y-2 mb-4">
                  <li>Персонализация кошельков и портмоне</li>
                  <li>Нанесение монограмм на кожаные аксессуары</li>
                  <li>Гравировка на обложках ежедневников</li>
                  <li>Создание уникальных ремней с гравировкой</li>
                  <li>Декорирование кожаных сумок и рюкзаков</li>
                </ul>
                <p class="text-gray-700 font-medium text-lg">Цена: от 750 руб.</p>
              </div>
            </SwiperSlide>
          </Swiper>
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
// Импорт Swiper и модулей
import { Swiper, SwiperSlide } from 'swiper/vue'
import { Navigation, Pagination } from 'swiper/modules'

// Импорт стилей Swiper
import 'swiper/css'
import 'swiper/css/navigation'
import 'swiper/css/pagination'

// Модули Swiper
const modules = [Navigation, Pagination]

// Настройки breakpoints для адаптивности
const breakpoints = {
  640: {
    slidesPerView: 1,
    spaceBetween: 20,
  },
  768: {
    slidesPerView: 2,
    spaceBetween: 30,
  },
  1024: {
    slidesPerView: 2,
    spaceBetween: 30,
  },
  1280: {
    slidesPerView: 3,
    spaceBetween: 30,
  }
}

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
