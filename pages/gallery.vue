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

    <!-- Галерея изображений с Swiper -->
    <div class="container mx-auto px-4 mb-16">
      <div class="gallery-slider-container relative">
        <Swiper
          :modules="modules"
          :slides-per-view="1"
          :space-between="30"
          :pagination="{ clickable: true }"
          :navigation="true"
          :autoplay="{
            delay: 4000,
            disableOnInteraction: false,
          }"
          :breakpoints="breakpoints"
          class="gallery-swiper"
        >
          <!-- Слайд 1 -->
          <SwiperSlide>
            <div class="overflow-hidden bg-white rounded-lg shadow-lg group h-full">
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
          </SwiperSlide>

          <!-- Слайд 2 -->
          <SwiperSlide>
            <div class="overflow-hidden bg-white rounded-lg shadow-lg group h-full">
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
          </SwiperSlide>

          <!-- Слайд 3 -->
          <SwiperSlide>
            <div class="overflow-hidden bg-white rounded-lg shadow-lg group h-full">
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
          </SwiperSlide>

          <!-- Слайд 4 -->
          <SwiperSlide>
            <div class="overflow-hidden bg-white rounded-lg shadow-lg group h-full">
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
          </SwiperSlide>

          <!-- Слайд 5 -->
          <SwiperSlide>
            <div class="overflow-hidden bg-white rounded-lg shadow-lg group h-full">
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
          </SwiperSlide>

          <!-- Слайд 6 -->
          <SwiperSlide>
            <div class="overflow-hidden bg-white rounded-lg shadow-lg group h-full">
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
          </SwiperSlide>
        </Swiper>
      </div>
    </div>

<!-- Секция преимуществ -->
<div class="container mx-auto px-4 mb-16">
  <div class="bg-white rounded-lg shadow-lg p-8">
    <h2 class="text-3xl font-bold mb-8 text-gray-800 text-center">
      Почему выбирают нас
    </h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      <div class="text-center">
        <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4">
          <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
          </svg>
        </div>
        <h3 class="text-xl font-semibold mb-2 text-gray-800">Высокое качество</h3>
        <p class="text-gray-600">Используем современное лазерное оборудование для точной и долговечной гравировки</p>
      </div>
      <div class="text-center">
        <div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
          <svg class="w-8 h-8 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
          </svg>
        </div>
        <h3 class="text-xl font-semibold mb-2 text-gray-800">Быстрое выполнение</h3>
        <p class="text-gray-600">Стандартные заказы выполняем за несколько дней, а срочные - в день обращения</p>
      </div>
      <div class="text-center">
        <div class="w-16 h-16 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4">
          <svg class="w-8 h-8 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
          </svg>
        </div>
        <h3 class="text-xl font-semibold mb-2 text-gray-800">Индивидуальный подход</h3>
        <p class="text-gray-600">Работаем с любыми дизайнами и помогаем создать уникальный проект</p>
      </div>
    </div>
  </div>
</div>

  <!-- Кнопка для возврата на главную (размещена под всеми элементами) -->
<div class="text-center mb-12">
  <NuxtLink
    to="/"
    class="inline-block px-8 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg transition-colors duration-300 shadow-lg"
  >
    Вернуться на главную
  </NuxtLink>
</div>

    <!-- Модальное окно формы связи -->
    <ContactModal v-model="showModal" @submit="handleFormSubmit" />
  </main>
</template>

<script setup>
// Импорт Swiper и модулей
import { Swiper, SwiperSlide } from 'swiper/vue'
import { Navigation, Pagination, Autoplay } from 'swiper/modules'

// Импорт стилей Swiper
import 'swiper/css'
import 'swiper/css/navigation'
import 'swiper/css/pagination'

// Модули Swiper
const modules = [Navigation, Pagination, Autoplay]

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
