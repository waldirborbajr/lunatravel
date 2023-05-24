import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);

  console.log(`ID => ${body.id}`);

  const res = await prisma.bank.update({
    // where: { id: Number(event.context.params.id) },
    where: { id: Number(body.id) },
    data: {
      name: body.name,
      agency: body.agency,
      account: body.account,
    },
  });

  return res;
});
