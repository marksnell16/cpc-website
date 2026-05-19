// @ts-check
import { defineConfig } from 'astro/config'
import tailwindcss from '@tailwindcss/vite'
import mdx from '@astrojs/mdx'
import sitemap from '@astrojs/sitemap'

export default defineConfig({
  site: 'https://cpclean.com.au',
  output: 'static',
  redirects: {
    '/authority/': '/about/',
    '/authority/carbon-neutral-sustainable-cleaning/': '/authority/carbon-neutral-cleaning/',
    '/knowledge-hub/eco-cleaning-products-effective/': '/knowledge-hub/',
    '/knowledge-hub/measure-cleaning-emissions/': '/knowledge-hub/',
    '/knowledge-hub/what-iso-compliant-cleaning-means/': '/knowledge-hub/'
  },
  vite: {
    plugins: [tailwindcss()]
  },
  integrations: [
    mdx(),
    sitemap({
      filter: (page) => !page.includes('/tender/')
    })
  ]
})
