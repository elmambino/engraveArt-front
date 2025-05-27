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
  
  <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 items-center">
    <div>
      <p class="text-gray-600 mb-4 leading-relaxed">
        Мастерская лазерной гравировки была основана в 2016 году группой
        энтузиастов, увлеченных современными технологиями обработки
        материалов. Начав с небольшого помещения и одного лазерного станка, мы
        постепенно расширили производство и сегодня являемся одной из ведущих
        компаний в своей отрасли
      </p>
      <p class="text-gray-600 leading-relaxed">
        За годы работы мы выполнили более 5000 заказов различной сложности: от
        простых сувениров до эксклюзивных корпоративных подарков и элементов
        декора. Наша команда постоянно совершенствует навыки и осваивает новые
        техники гравировки, чтобы предложить клиентам лучшие решения
      </p>
    </div>
    
    <div class="bg-gray-50 rounded-lg p-6 border border-gray-200">
      <div class="grid grid-cols-2 gap-6 text-center">
        <div class="py-2">
          <div class="text-2xl font-semibold text-gray-700 mb-1">7+</div>
          <div class="text-sm text-gray-600">лет опыта</div>
        </div>
        <div class="py-2">
          <div class="text-2xl font-semibold text-gray-700 mb-1">5000+</div>
          <div class="text-sm text-gray-600">выполненных заказов</div>
        </div>
        <div class="py-2">
          <div class="text-2xl font-semibold text-gray-700 mb-1">10+</div>
          <div class="text-sm text-gray-600">видов материалов</div>
        </div>
        <div class="py-2">
          <div class="text-2xl font-semibold text-gray-700 mb-1">100%</div>
          <div class="text-sm text-gray-600">довольных клиентов</div>
        </div>
      </div>
    </div>
  </div>
</div>


      <!-- Команда -->
      <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
  <h2 class="text-3xl font-bold mb-8 text-gray-800 text-center">
    Наша команда
  </h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="text-center bg-gray-50 rounded-lg p-6 hover:shadow-md transition-shadow duration-300">
            <div class="w-20 h-20 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-10 h-10 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Юрий Корзин
            </h3>
            <p class="text-blue-600 font-medium mb-3">
              Руководитель мастерской
            </p>
            <p class="text-gray-600 text-sm leading-relaxed">
              Более 10 лет опыта в сфере лазерной обработки материалов. Отвечает за стратегическое развитие и контроль качества всех процессов
            </p>
          </div>

          <div class="text-center bg-gray-50 rounded-lg p-6 hover:shadow-md transition-shadow duration-300">
            <div class="w-20 h-20 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-10 h-10 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zM7 3H5a2 2 0 00-2 2v12a4 4 0 004 4h2M9 3h6a2 2 0 012 2v12a4 4 0 01-4 4H9m0-16v16"></path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Елена Иванова
            </h3>
            <p class="text-purple-600 font-medium mb-3">Главный дизайнер</p>
            <p class="text-gray-600 text-sm leading-relaxed">
              Создает уникальные дизайны и воплощает идеи клиентов. Специализируется на разработке индивидуальных решений для каждого проекта
            </p>
          </div>

          <div class="text-center bg-gray-50 rounded-lg p-6 hover:shadow-md transition-shadow duration-300">
            <div class="w-20 h-20 bg-gray-200 rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-10 h-10 text-gray-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold mb-2 text-gray-800">
              Олег Сидоров
            </h3>
            <p class="text-gray-600 font-medium mb-3">Технический специалист</p>
            <p class="text-gray-600 text-sm leading-relaxed">
              Отвечает за работу оборудования и качество гравировки. Обеспечивает техническое обслуживание и настройку лазерных станков
            </p>
          </div>
        </div>
      </div>

      <!-- Принципы работы -->
<div class="bg-white rounded-lg shadow-lg p-8 mb-8">
  <h2 class="text-3xl font-bold mb-8 text-gray-800 text-center">
    Наши принципы
  </h2>
  
  <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
    <div>
      <ul class="space-y-2">
        <li class="flex items-start">
          <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
          <div>
            <p class="text-gray-600 leading-relaxed">
              <span class="font-semibold text-gray-800">Качество</span> — используем только лучшие материалы и современное оборудование для достижения превосходных результатов
            </p>
          </div>
        </li>
        
        <li class="flex items-start">
          <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
          <div>
            <p class="text-gray-600 leading-relaxed">
              <span class="font-semibold text-gray-800">Точность</span> — выполняем работу с максимальной детализацией и соблюдением всех технических требований
            </p>
          </div>
        </li>
        
        <li class="flex items-start">
          <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
          <div>
            <p class="text-gray-600 leading-relaxed">
              <span class="font-semibold text-gray-800">Креативность</span> — находим нестандартные решения для сложных задач и воплощаем самые смелые идеи
            </p>
          </div>
        </li>
      </ul>
    </div>

    <div>
      <ul class="space-y-2">
        <li class="flex items-start">
          <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
          <div>
            <p class="text-gray-600 leading-relaxed">
              <span class="font-semibold text-gray-800">Честность</span> — прозрачное ценообразование без скрытых платежей и честные сроки выполнения
            </p>
          </div>
        </li>
        
        <li class="flex items-start">
          <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
          <div>
            <p class="text-gray-600 leading-relaxed">
              <span class="font-semibold text-gray-800">Ответственность</span> — соблюдаем сроки, всегда на связи и несем полную ответственность за результат
            </p>
          </div>
        </li>
        
        <li class="flex items-start">
          <div class="w-2 h-2 bg-gray-400 rounded-full mt-2 mr-4 flex-shrink-0"></div>
          <div>
            <p class="text-gray-600 leading-relaxed">
              <span class="font-semibold text-gray-800">Индивидуальный подход</span> — учитываем все пожелания каждого клиента и создаем персонализированные решения
            </p>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>


<!-- Призыв к действию -->
<div class="text-center bg-gradient-to-r from-blue-50 to-indigo-50 rounded-lg p-8">
  <h2 class="text-3xl font-bold mb-6 text-gray-800">
    Давайте работать вместе!
  </h2>
  <button
    @click="showModal = true"
    class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-8 rounded-lg transition-colors text-lg cursor-pointer shadow-lg hover:shadow-xl"
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
