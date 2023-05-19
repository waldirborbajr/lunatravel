export const useUtils = () => {
  const consLog = (msg: string) => console.log(`${msg}`);
  const consErr = (msg: string) => console.error(`${msg}`);

  return {
    consLog,
    consErr,
  };
};
