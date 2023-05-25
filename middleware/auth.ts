export default defineNuxtRouteMiddleware(async (to) => {
  const user = await userUser();

  if (user == null && user == undefined) {
    return "/";
  }
});
