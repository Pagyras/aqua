# АкваЭкоСток — сайт на Eleventy

Статический сайт компании на Eleventy/Nunjucks. Исходники лежат в `src`, собранная версия публикуется в `public`.

## Структура

```text
src/
├── _data/currentProjects.js          # данные проектов
├── _includes/
│   ├── layouts/base.njk
│   └── partials/
│       ├── head.njk
│       ├── header.njk
│       └── footer.njk
├── assets/
│   ├── css/styles.css
│   ├── js/main.js
│   ├── docs/                         # опросные листы для скачивания
│   ├── img/
│   │   ├── logo.png
│   │   ├── products/                 # изображения продукции
│   │   └── projects/current/         # фото проектов
│   └── video/projects/current/       # видео проектов
├── about.njk
├── index.njk
├── privacy.njk
├── product.njk
├── project-detail.njk
├── projects.njk
└── service.njk
```

## Запуск локально

```bash
npm install
npm run start -- --port 8080
```

После запуска сайт доступен по адресу `http://localhost:8080/`.

## Сборка

```bash
npm run build
```

Готовые файлы появляются в папке `public/`.

## Контент

- Продукция на главной и странице каталога редактируется в `src/index.njk` и `src/product.njk`.
- Проекты, тексты, фото и видео редактируются в `src/_data/currentProjects.js`.
- Опросные листы лежат в `src/assets/docs/` и подключены на странице `product.html`.
- Логотип подключен в `src/_includes/partials/header.njk` и `src/_includes/partials/footer.njk`.

## Перед публикацией

1. Выполнить `npm run build`.
2. Проверить `public/index.html`, `public/product.html`, `public/projects.html`, `public/about.html` и страницы отдельных проектов.
3. Проверить скачивание опросных листов на странице продукции.
4. Проверить мобильное меню и отображение карточек продукции/проектов.

## Форма заявки

Форма на главной отправляется через FormSubmit на `akvaekostok@yandex.ru`.

После первой тестовой отправки на эту почту придет письмо подтверждения от FormSubmit. Его нужно подтвердить один раз, после этого заявки начнут приходить на почту. Redirect после отправки выставляется скриптом на текущий домен, поэтому форма работает и на GitHub Pages, и на основном домене.
