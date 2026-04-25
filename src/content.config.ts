import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const posts = defineCollection({
  loader: glob({
    pattern: '**/*.md',
    base: './src/content/posts',
  }),
  schema: z.object({
    // 新結構（未來用）
    title_zh: z.string().optional(),
    title_en: z.string().optional(),
    description_zh: z.string().optional(),
    description_en: z.string().optional(),

    // 舊結構（先保留）
    title: z.string().optional(),
    description: z.string().optional(),

    date: z.string(),
    image: z.string().optional(),
  }),
});

export const collections = {
  posts,
};