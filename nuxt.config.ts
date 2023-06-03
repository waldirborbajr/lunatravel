// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  // page: true,

  app: {
    head: {
      title: "Luna Travel Monetary Services",
      htmlAttrs: {
        lang: "en",
      },
      meta: [
        { charset: "utf-8" },
        { name: "viewport", content: "width=device-width, initial-scale=1" },
      ],
    },
  },

  modules: [
    "@nuxtjs/tailwindcss", 
    "nuxt-icon", 
    "@nuxtjs/i18n", 
    "@element-plus/nuxt"
  ],

  i18n: {
    vueI18n:'./i18n.config.ts'
  },

  tailwindcss: {
    cssPath: "~/assets/css/tailwind.css",
    configPath: "tailwind.config",
    exposeConfig: false,
    exposeLevel: 2,
    config: {
      mode: "jit",
      content: [
        "components/**/*.{vue,js,ts}",
        "layouts/**/*.vue",
        "pages/**/*.vue",
        "composables/**/*.{js,ts}",
        "plugins/**/*.{js,ts}",
        "App.{js,ts,vue}",
        "app.{js,ts,vue}",
        "Error.{js,ts,vue}",
        "error.{js,ts,vue}",
        "content/**/**.md",
      ],
      theme: {
        extend: {
          colors: {
            "bpp-header": "#343541",
            "bpp-sidebar": "#40414f",
          },
        },
      },
      plugins: [],
    },
    injectPosition: "first",
    viewer: true,
  },

  // Build
  css: ["@/assets/css/tailwind.css"],

  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
});
