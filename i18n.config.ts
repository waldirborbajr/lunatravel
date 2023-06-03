export default defineI18nConfig(() => ({
    legacy:false,
    langDir: "locales",
    defaultLocale: "en-US",
    locale:'en-US',
    // strategy:"prefix_except_default",
    locales: [
      {
        code: "en-US",
        iso:"en-US",
        name:"English(US)",
        file: "en-US.json",
      },
      {
        code: "pt-BR",
        iso:"pt-BR",
        name:"Portuges(BR)",
        file: "pt-BR.json",
      },
    ],
}))
