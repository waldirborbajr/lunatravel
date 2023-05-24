import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  let bank = await prisma.bank.findFirst({
    where: { id: Number(event.context.params.id) },
  });
  return bank;
});
