import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);

  const res = await prisma.bank.update({
    where: { id: Number(event.context.params.id) },
    data: {
      name: body.name,
      agency: body.address,
      account: body.zipCode,
    },
  });

  return res;
});
