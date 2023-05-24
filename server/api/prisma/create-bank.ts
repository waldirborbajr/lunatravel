import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);

  const bank = await prisma.bank.create({
    data: {
      name: body.name,
      agency: body.agency,
      account: body.account,
    },
  });
  return bank;
});
