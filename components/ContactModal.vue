<template>
  <Teleport to="body">
    <transition
      enter-active-class="transition ease-out duration-300"
      enter-from-class="opacity-0"
      enter-to-class="opacity-100"
      leave-active-class="transition ease-in duration-200"
      leave-from-class="opacity-100"
      leave-to-class="opacity-0"
    >
      <div
        v-if="modelValue"
        class="fixed inset-0 backdrop-blur-sm bg-black/30 flex items-center justify-center p-4 z-50"
        @click.self="closeModal"
      >
        <div
          class="bg-white rounded-lg shadow-xl max-w-md w-full p-6 transform transition-all"
          :class="modelValue ? 'scale-100 opacity-100' : 'scale-95 opacity-0'"
        >
          <div class="flex justify-between items-center mb-4">
            <h3 class="text-2xl font-bold text-gray-800">Связаться с нами</h3>
            <button
              @click="closeModal"
              class="text-gray-500 hover:text-gray-700 focus:outline-none"
            >
              <svg
                class="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            </button>
          </div>

          <form @submit.prevent="submitForm">
            <!-- Поле ФИО -->
            <div class="mb-4">
              <label for="name" class="block text-gray-700 font-medium mb-2">
                ФИО
              </label>
              <input
                type="text"
                id="name"
                v-model="form.name"
                @input="validateName"
                @keypress="onlyLettersAndSpaces"
                class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 transition-colors"
                :class="nameError ? 'border-red-500 focus:ring-red-500' : 'border-gray-300 focus:ring-blue-500'"
                placeholder="Иванов Иван Иванович"
                required
              />
              <p v-if="nameError" class="text-red-500 text-sm mt-1">
                {{ nameError }}
              </p>
            </div>

            <!-- Поле телефона -->
            <div class="mb-4">
              <label for="phone" class="block text-gray-700 font-medium mb-2">
                Номер телефона
              </label>
              <input
                type="tel"
                id="phone"
                v-model="form.phone"
                @input="formatPhone"
                @keypress="onlyNumbers"
                class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 transition-colors"
                :class="phoneError ? 'border-red-500 focus:ring-red-500' : 'border-gray-300 focus:ring-blue-500'"
                placeholder="+7 (999) 999-99-99"
                maxlength="18"
                required
              />
              <p v-if="phoneError" class="text-red-500 text-sm mt-1">
                {{ phoneError }}
              </p>
            </div>

            <!-- Поле описания -->
            <div class="mb-6">
              <label
                for="description"
                class="block text-gray-700 font-medium mb-2"
              >
                Описание заказа
              </label>
              <textarea
                id="description"
                v-model="form.description"
                rows="4"
                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                placeholder="Опишите ваш заказ подробнее..."
                required
              ></textarea>
            </div>

            <div class="flex justify-end">
              <button
                type="button"
                @click="closeModal"
                class="px-4 py-2 mr-2 text-gray-700 bg-gray-200 rounded-md hover:bg-gray-300 focus:outline-none transition-colors"
              >
                Отмена
              </button>
              <button
                type="submit"
                :disabled="!isFormValid"
                class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none transition-colors disabled:bg-gray-400 disabled:cursor-not-allowed"
              >
                Отправить
              </button>
            </div>
          </form>
        </div>
      </div>
    </transition>
  </Teleport>
</template>

<script setup>
const props = defineProps({
  modelValue: {
    type: Boolean,
    default: false,
  },
});

const emit = defineEmits(["update:modelValue", "submit"]);

// Данные формы
const form = ref({
  name: "",
  phone: "",
  description: "",
});

// Ошибки валидации
const nameError = ref("");
const phoneError = ref("");

// Валидация ФИО
const validateName = () => {
  const nameValue = form.value.name.trim();
  
  if (!nameValue) {
    nameError.value = "Поле ФИО обязательно для заполнения";
    return false;
  }
  
  // Проверка на минимальное количество слов (имя и фамилия)
  const words = nameValue.split(/\s+/).filter(word => word.length > 0);
  if (words.length < 2) {
    nameError.value = "Введите фамилию и имя";
    return false;
  }
  
  // Проверка на допустимые символы (только буквы, пробелы, дефисы)
  const nameRegex = /^[а-яёА-ЯЁa-zA-Z\s\-]+$/;
  if (!nameRegex.test(nameValue)) {
    nameError.value = "ФИО может содержать только буквы, пробелы и дефисы";
    return false;
  }
  
  nameError.value = "";
  return true;
};

// Валидация телефона
const validatePhone = () => {
  const phoneValue = form.value.phone.replace(/\D/g, "");
  
  if (!phoneValue) {
    phoneError.value = "Поле телефона обязательно для заполнения";
    return false;
  }
  
  if (phoneValue.length !== 11) {
    phoneError.value = "Номер телефона должен содержать 11 цифр";
    return false;
  }
  
  if (!phoneValue.startsWith("7") && !phoneValue.startsWith("8")) {
    phoneError.value = "Номер должен начинаться с 7 или 8";
    return false;
  }
  
  phoneError.value = "";
  return true;
};

// Форматирование телефона с маской
const formatPhone = (event) => {
  let value = event.target.value.replace(/\D/g, "");
  
  // Ограничиваем длину до 11 цифр
  if (value.length > 11) {
    value = value.slice(0, 11);
  }
  
  // Автоматически добавляем 7, если пользователь начал с 8
  if (value.startsWith("8")) {
    value = "7" + value.slice(1);
  }
  
  // Если номер не начинается с 7, добавляем 7
  if (value.length > 0 && !value.startsWith("7")) {
    value = "7" + value;
  }
  
  // Применяем маску
  let formattedValue = "";
  if (value.length > 0) {
    formattedValue = "+7";
    if (value.length > 1) {
      formattedValue += " (" + value.slice(1, 4);
      if (value.length > 4) {
        formattedValue += ") " + value.slice(4, 7);
        if (value.length > 7) {
          formattedValue += "-" + value.slice(7, 9);
          if (value.length > 9) {
            formattedValue += "-" + value.slice(9, 11);
          }
        }
      }
    }
  }
  
  form.value.phone = formattedValue;
  validatePhone();
};

// Разрешить только цифры для телефона
const onlyNumbers = (event) => {
  const char = String.fromCharCode(event.which);
  if (!/[0-9]/.test(char)) {
    event.preventDefault();
  }
};

// Разрешить только буквы, пробелы и дефисы для ФИО
const onlyLettersAndSpaces = (event) => {
  const char = String.fromCharCode(event.which);
  if (!/[а-яёА-ЯЁa-zA-Z\s\-]/.test(char)) {
    event.preventDefault();
  }
};

// Проверка валидности всей формы
const isFormValid = computed(() => {
  return (
    form.value.name.trim() !== "" &&
    form.value.phone.trim() !== "" &&
    form.value.description.trim() !== "" &&
    nameError.value === "" &&
    phoneError.value === ""
  );
});

// Закрыть модальное окно
const closeModal = () => {
  emit("update:modelValue", false);
  // Сбрасываем ошибки при закрытии
  nameError.value = "";
  phoneError.value = "";
};

// Отправка формы
const submitForm = () => {
  // Валидируем все поля перед отправкой
  const isNameValid = validateName();
  const isPhoneValid = validatePhone();
  
  if (!isNameValid || !isPhoneValid) {
    return;
  }
  
  // Подготавливаем данные для отправки
  const formData = {
    name: form.value.name.trim(),
    phone: form.value.phone.replace(/\D/g, ""), // Отправляем только цифры
    description: form.value.description.trim(),
  };
  
  emit("submit", formData);

  // Очистка формы после отправки
  form.value = {
    name: "",
    phone: "",
    description: "",
  };
  
  // Сбрасываем ошибки
  nameError.value = "";
  phoneError.value = "";

  // Закрыть модальное окно после отправки
  closeModal();
};

// Блокировка прокрутки страницы, когда модальное окно открыто
watch(
  () => props.modelValue,
  (newVal) => {
    if (newVal) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
  }
);

// Убедимся, что scroll разблокируется при размонтировании компонента
onUnmounted(() => {
  document.body.style.overflow = "";
});
</script>
