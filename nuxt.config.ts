// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: ["@nuxtjs/tailwindcss", "nuxt-icon", "@nuxtjs/i18n"],

  tailwindcss: {
    cssPath: "~/assets/css/tailwind.css",
    configPath: "tailwind.config",
    exposeConfig: true,
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
});
