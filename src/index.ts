import { registerPlugin } from '@capacitor/core';

import type { ClipboardPlugin } from './definitions';

const Clipboard = registerPlugin<ClipboardPlugin>('Clipboard');

export * from './definitions';
export { Clipboard };
