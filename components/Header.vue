<template>
  <header class="px-20 border-b-2 border-gray-400">
    <div class="flex justify-between py-7 items-center">
      <div class="flex justify-between gap-20">
        <NuxtLink to="/gallery">
          <p class="text-xl">Галерея</p>
        </NuxtLink>
        <NuxtLink to="/services">
          <p class="text-xl">Услуги</p>
        </NuxtLink>
      </div>
      <div>
        <NuxtLink to="/">
          <p class="font-semibold text-4xl">engraveArt</p>
        </NuxtLink>
      </div>
      <div class="flex justify-between gap-20">
        <NuxtLink to="/about">
          <p class="text-xl">О нас</p>
        </NuxtLink>
        <NuxtLink to="/reviews">
          <p class="text-xl">Отзывы</p>
        </NuxtLink>
      </div>
    </div>
  </header>
</template>
