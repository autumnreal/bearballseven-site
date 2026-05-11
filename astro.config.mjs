// @ts-check
import { defineConfig } from 'astro/config';

import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://bearballseven.com', // 改成你的實際網址
  integrations: [sitemap()]
});