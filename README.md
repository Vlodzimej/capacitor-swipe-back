# Capacitor Swipe Back

Минималистичный плагин для Capacitor, который переключает жест смахивания назад в iOS WebView (`allowsBackForwardNavigationGestures`). Реализации для Android и веба возвращают статус, но не изменяют поведение навигации.

- Поддерживает Capacitor v8 (обновлено)
- Предназначен для iOS; Android/веб являются "пустышками", которые успешно выполняются.
- Преемник неподдерживаемого плагина `capacitor-plugin-ios-swipe-back` (версии v2 и ниже).

## Установка

```bash
npm install @scloud/capacitor-swipe-back
npx cap sync ios
```

## Использование

```ts
import { CapacitorSwipeBackPlugin } from '@scloud/capacitor-swipe-back';

// Включить жест смахивания назад для текущего WebView
await CapacitorSwipeBackPlugin.enable();

// Отключить жест, когда нужна более строгая навигация (например, экраны авторизации)
await CapacitorSwipeBackPlugin.disable();
```

На Android и вебе плагин возвращает те же данные без изменения навигации.

## API

### `enable() => Promise<{ status: 'enable' }>`
Включает allowsBackForwardNavigationGestures на iOS.

### `disable() => Promise<{ status: 'disable' }>`
Отключает allowsBackForwardNavigationGestures на iOS.

## Разработка

- `npm run build` – генерация типов/документации JSON, компиляция TypeScript и сборка.
- `npm run lint` – форматирование и проверка TypeScript/Swift/Java кода.

## Благодарности

Основано на плагинах от Samuel Compagnon (notnotsamuel/capacitor-swipe-back) и Ales Mraz (diiiary/capacitor-plugin-ios-swipe-back).
