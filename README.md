# АкваЭкоСток — сайт на Eleventy/Nunjucks

Проект перепакован из отдельных больших HTML-файлов в нормальную структуру.

## Что внутри

```text
src/
├── _includes/
│   ├── layouts/base.njk
│   └── partials/
│       ├── head.njk
│       ├── header.njk
│       └── footer.njk
├── assets/
│   ├── css/styles.css
│   ├── js/main.js
│   ├── img/
│   │   ├── projects/
│   │   ├── products/
│   │   ├── hero/
│   │   └── placeholders/
│   └── docs/
├── index.njk
├── product.njk
├── projects.njk
├── about.njk
├── privacy.njk
└── service.njk
```

## Главное изменение

Хедер и футер теперь лежат в одном месте:

- `src/_includes/partials/header.njk`
- `src/_includes/partials/footer.njk`

Теперь не нужно менять хедер и футер в каждой странице отдельно.

## Как запустить

```bash
npm install
npm run start
```

После этого сайт откроется на локальном сервере Eleventy.

## Как собрать финальную версию

```bash
npm run build
```

Готовый сайт будет в папке:

```text
public/
```

Я также положил уже собранную папку `public/`, чтобы можно было сразу открыть `public/index.html` без сборки.

## Что уже поправлено

- На главной ссылка `Услуги` ведёт на блок услуг: `#services`.
- На остальных страницах ссылка `Услуги` ведёт на `index.html#services`.
- Политика конфиденциальности убрана из колонки контактов в футере.
- Политика осталась только в нижней строке футера справа.
- JS бургер-меню вынесен в `assets/js/main.js`.
- Стили вынесены из HTML в `assets/css/styles.css`.

## Фото и заглушки

- Фото проектов перенесены в `assets/img/projects/`.
- Внешние фото продукции и hero пока оставлены как есть, чтобы сайт выглядел сразу нормально.
- Для будущей замены есть папки:
  - `assets/img/products/`
  - `assets/img/hero/`
  - `assets/img/placeholders/`
- Заглушка: `assets/img/placeholders/placeholder.svg`.

## Опросные листы

Папка для документов:

```text
src/assets/docs/
```

Когда появятся PDF/DOCX/XLSX, положите их туда и замените ссылки у кнопок `Скачать опросный лист`.

## Что можно улучшить дальше

Сейчас все стили собраны в один файл `styles.css`, чтобы быстро убрать CSS из HTML. Следующий шаг — разделить его на:

```text
base.css
header.css
footer.css
home.css
product.css
projects.css
about.css
privacy.css
```

Но даже в текущем виде код уже намного удобнее: страницы стали короткими, а хедер и футер больше не дублируются.
