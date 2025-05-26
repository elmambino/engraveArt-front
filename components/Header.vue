<template>
  <header class="px-4 md:px-20 border-b-2 border-gray-400">
    <div class="flex justify-between py-7 items-center">
      <!-- Десктопная версия меню (скрыта на мобильных) -->
      <div class="hidden md:flex justify-between gap-20">
        <NuxtLink to="/gallery">
          <p class="text-xl">Галерея</p>
        </NuxtLink>
        <NuxtLink to="/services">
          <p class="text-xl">Услуги</p>
        </NuxtLink>
      </div>

      <!-- Логотип (всегда по центру) -->
      <div class="flex-1 md:flex-none text-center md:text-left">
        <NuxtLink to="/">
          <p class="font-semibold text-2xl md:text-4xl">ГравиАрт</p>
        </NuxtLink>
      </div>

      <!-- Десктопная версия меню (скрыта на мобильных) -->
      <div class="hidden md:flex justify-between gap-20">
        <NuxtLink to="/about">
          <p class="text-xl">О нас</p>
        </NuxtLink>
        <NuxtLink to="/reviews">
          <p class="text-xl">Отзывы</p>
        </NuxtLink>
      </div>

      <!-- Кнопка гамбургер (видна только на мобильных) -->
      <button 
        @click="toggleMobileMenu"
        class="md:hidden flex flex-col justify-center items-center w-8 h-8 space-y-1"
        :class="{ 'open': isMobileMenuOpen }"
      >
        <span 
          class="block w-6 h-0.5 bg-black transition-all duration-300"
          :class="{ 'rotate-45 translate-y-2': isMobileMenuOpen }"
        ></span>
        <span 
          class="block w-6 h-0.5 bg-black transition-all duration-300"
          :class="{ 'opacity-0': isMobileMenuOpen }"
        ></span>
        <span 
          class="block w-6 h-0.5 bg-black transition-all duration-300"
          :class="{ '-rotate-45 -translate-y-2': isMobileMenuOpen }"
        ></span>
      </button>
    </div>

    <!-- Мобильное меню (выпадающее) -->
    <div 
      class="md:hidden overflow-hidden transition-all duration-300 ease-in-out"
      :class="isMobileMenuOpen ? 'max-h-64 opacity-100' : 'max-h-0 opacity-0'"
    >
      <nav class="py-4 space-y-4">
        <NuxtLink 
          to="/gallery" 
          @click="closeMobileMenu"
          class="block text-lg py-2 px-4 hover:bg-gray-100 transition-colors"
        >
          Галерея
        </NuxtLink>
        <NuxtLink 
          to="/services" 
          @click="closeMobileMenu"
          class="block text-lg py-2 px-4 hover:bg-gray-100 transition-colors"
        >
          Услуги
        </NuxtLink>
        <NuxtLink 
          to="/about" 
          @click="closeMobileMenu"
          class="block text-lg py-2 px-4 hover:bg-gray-100 transition-colors"
        >
          О нас
        </NuxtLink>
        <NuxtLink 
          to="/reviews" 
          @click="closeMobileMenu"
          class="block text-lg py-2 px-4 hover:bg-gray-100 transition-colors"
        >
          Отзывы
        </NuxtLink>
      </nav>
    </div>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

// Состояние мобильного меню
const isMobileMenuOpen = ref(false)

// Функция переключения меню
const toggleMobileMenu = () => {
  isMobileMenuOpen.value = !isMobileMenuOpen.value
}

// Функция закрытия меню
const closeMobileMenu = () => {
  isMobileMenuOpen.value = false
}

// Закрытие меню при клике вне его области
const handleClickOutside = (event) => {
  if (!event.target.closest('header')) {
    closeMobileMenu()
  }
}

// Закрытие меню при изменении размера экрана
const handleResize = () => {
  if (window.innerWidth >= 768) {
    closeMobileMenu()
  }
}

onMounted(() => {
  document.addEventListener('click', handleClickOutside)
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  document.removeEventListener('click', handleClickOutside)
  window.removeEventListener('resize', handleResize)
})
</script>

<style scoped>
/* Дополнительные стили для анимации гамбургера */
.open span:nth-child(1) {
  transform: rotate(45deg) translate(6px, 6px);
}

.open span:nth-child(3) {
  transform: rotate(-45deg) translate(6px, -6px);
}
</style>
