# Capacitor Swipe Back

A minimal Capacitor plugin that toggles the iOS WebView swipe-back gesture (`allowsBackForwardNavigationGestures`). Android and web implementations resolve with a status but do not change navigation behavior.

- Supports Capacitor v3–v7.
- Intended for iOS; Android/web are no-ops that still resolve successfully.
- Successor to the unmaintained `capacitor-plugin-ios-swipe-back` (v2 and below).

## Installation

```bash
npm install @notnotsamuel/capacitor-swipe-back
npx cap sync ios
```

## Usage

```ts
import { CapacitorSwipeBackPlugin } from '@notnotsamuel/capacitor-swipe-back';

// Enable swipe-back for the current WebView
await CapacitorSwipeBackPlugin.enable();

// Disable swipe-back when you need stricter navigation (e.g., auth screens)
await CapacitorSwipeBackPlugin.disable();
```

On Android and web, the plugin resolves with the same payload without changing navigation.

## API

### `enable() => Promise<{ status: 'enable' }>`
Enables `allowsBackForwardNavigationGestures` on iOS.

### `disable() => Promise<{ status: 'disable' }>`
Disables `allowsBackForwardNavigationGestures` on iOS.

## Development

- `npm run build` – generate typings/docs JSON, compile TypeScript, and bundle.
- `npm run lint` – format and lint TypeScript/Swift/Java.

Publish notes:
- Bump `version` in `package.json` before releasing.
- Create a matching git tag for CocoaPods consumers (tag name should equal the package version).
- CI is configured to publish to npm on pushes to `main` (requires `NPM_TOKEN` secret).

## Credits

Originally based on the community plugin by Ales Mraz (`diiiary/capacitor-plugin-ios-swipe-back`).
