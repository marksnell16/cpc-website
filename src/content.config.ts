import { defineCollection, z } from 'astro:content'
import { glob } from 'astro/loaders'

const clusterEnum = z.enum([
  'government',
  'industrial',
  'education',
  'carbon',
  'procurement',
  'technology'
])

const articles = defineCollection({
  loader: glob({ pattern: '**/*.mdx', base: './src/content/articles' }),
  schema: z.object({
    title: z.string(),
    cluster: clusterEnum,
    articleCode: z.string(),          // e.g. 'G1', 'I3', 'CA2'
    authorityPage: z.string(),        // authority page slug
    authorityPageUrl: z.string(),     // full path e.g. '/authority/government-defence-cleaning'
    primaryKeyword: z.string(),
    metaDescription: z.string().max(160),
    publishDate: z.date(),
    lastUpdated: z.date().optional(),
    readTime: z.number().int(),
    relatedArticles: z.array(z.string()).default([]),
    relatedAuthority: z.array(z.string()).default([]),
    featured: z.boolean().default(false),
  }),
})

const casestudies = defineCollection({
  loader: glob({ pattern: '**/*.mdx', base: './src/content/case-studies' }),
  schema: z.object({
    title: z.string(),
    code: z.string(),
    sector: z.string(),
    sectorCluster: clusterEnum,
    location: z.string(),
    contractTerm: z.string(),
    outcomes: z.array(z.object({
      label: z.string(),
      value: z.string(),
      sub: z.string().optional(),
    })).min(3).max(6),
    services: z.array(z.string()),
    quote: z.object({
      text: z.string(),
      attribution: z.string(),
    }).optional(),
    metaDescription: z.string().max(160),
    relatedAuthority: z.array(z.string()).default([]),
    relatedArticles: z.array(z.string()).default([]),
    featured: z.boolean().default(false),
  }),
})

export const collections = { articles, casestudies }
