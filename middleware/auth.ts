export default defineNuxtRouteMiddleware((to) => {
  console.log("middleware");
  // const isLogged = ref(false);

  // if (isLogged) {
  //   return navigateTo(to.fullPath);
  // }
  // return navigateTo("/login");
});
