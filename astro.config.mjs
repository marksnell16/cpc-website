// @ts-check
import { defineConfig } from 'astro/config'
import tailwindcss from '@tailwindcss/vite'
import mdx from '@astrojs/mdx'
import sitemap from '@astrojs/sitemap'

export default defineConfig({
  site: 'https://cpclean.com.au',
  output: 'static',
  redirects: {
    '/authority/': '/knowledge-hub/',
    '/authority/carbon-neutral-sustainable-cleaning/': '/authority/carbon-neutral-cleaning/',
    '/knowledge-hub/eco-cleaning-products-effective/': '/knowledge-hub/sustainable-cleaning-supply-chain/',
    '/knowledge-hub/measure-cleaning-emissions/': '/knowledge-hub/scope-emissions-cleaning-reporting/',
    '/knowledge-hub/what-iso-compliant-cleaning-means/': '/knowledge-hub/iso-certification-cleaning-providers/'
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
