const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function seedBank() {
  try {
    await prisma.bank.create({
      data: {
        name: "Green Bank",
        agency: "778899",
        account: "0023800",
      },
    });

    await prisma.bank.create({
      data: {
        name: "Blue Bank",
        agency: "8899",
        account: "23800",
      },
    });

    await prisma.bank.create({
      data: {
        name: "Brown Bank",
        agency: "99",
        account: "800",
      },
    });

  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

seedBank();
