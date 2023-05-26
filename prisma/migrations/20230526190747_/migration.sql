/*
  Warnings:

  - You are about to drop the `Bank` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Session` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Bank";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Session";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "User";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "city" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME
);

-- CreateTable
CREATE TABLE "identification" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME
);

-- CreateTable
CREATE TABLE "classcutomer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "seeincompany" BOOLEAN NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME
);

-- CreateTable
CREATE TABLE "bank" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "agency" TEXT NOT NULL,
    "account" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME
);

-- CreateTable
CREATE TABLE "user" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME,
    "sessionId" INTEGER
);

-- CreateTable
CREATE TABLE "customer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "zipcode" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "phone1" TEXT NOT NULL,
    "phone2" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "birthDate" DATETIME NOT NULL,
    "idcardnumber" TEXT NOT NULL,
    "comission" REAL NOT NULL,
    "attention" TEXT NOT NULL,
    "restriction" BOOLEAN NOT NULL,
    "active" BOOLEAN NOT NULL,
    "picturepath" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME,
    "cityId" INTEGER,
    "classCustomerId" INTEGER,
    "identificationId" INTEGER,
    CONSTRAINT "customer_cityId_fkey" FOREIGN KEY ("cityId") REFERENCES "city" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "customer_classCustomerId_fkey" FOREIGN KEY ("classCustomerId") REFERENCES "classcutomer" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "customer_identificationId_fkey" FOREIGN KEY ("identificationId") REFERENCES "identification" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "parameter" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "customerId" INTEGER NOT NULL,
    "exchange_vl_month" REAL NOT NULL DEFAULT 0.00,
    "exchange_vl_year" REAL NOT NULL DEFAULT 0.00,
    "exchange_comission" REAL NOT NULL DEFAULT 0.00,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME,
    CONSTRAINT "parameter_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "cashflow" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "datecashflow" DATETIME NOT NULL,
    "tcsahflow" DECIMAL NOT NULL,
    "amountcashflow" DECIMAL NOT NULL,
    "valuecashflow" DECIMAL NOT NULL,
    "centsone" DECIMAL NOT NULL,
    "centstwo" DECIMAL NOT NULL,
    "checknumber" TEXT NOT NULL,
    "precentcashflow" DECIMAL NOT NULL,
    "valuepercentcashflow" DECIMAL NOT NULL,
    "airpercentcashflow" DECIMAL NOT NULL,
    "aircomissioncashflow" DECIMAL NOT NULL,
    "airreservationcashflow" DECIMAL NOT NULL,
    "airdateemitcashflow" DECIMAL NOT NULL,
    "subtotalcashflow" DECIMAL NOT NULL,
    "totalcashflow" DECIMAL NOT NULL,
    "totaltopaycashflow" DECIMAL NOT NULL,
    "wirecashflow" DECIMAL NOT NULL,
    "vincashflow" DECIMAL NOT NULL,
    "description" TEXT NOT NULL,
    "observation" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "deleted_at" DATETIME,
    "customerId" INTEGER,
    CONSTRAINT "cashflow_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "customer" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateIndex
CREATE INDEX "city_name_idx" ON "city"("name");

-- CreateIndex
CREATE INDEX "identification_name_idx" ON "identification"("name");

-- CreateIndex
CREATE INDEX "classcutomer_name_idx" ON "classcutomer"("name");

-- CreateIndex
CREATE UNIQUE INDEX "bank_name_key" ON "bank"("name");

-- CreateIndex
CREATE INDEX "bank_name_idx" ON "bank"("name");

-- CreateIndex
CREATE UNIQUE INDEX "user_username_key" ON "user"("username");

-- CreateIndex
CREATE INDEX "user_name_idx" ON "user"("name");

-- CreateIndex
CREATE INDEX "customer_name_idx" ON "customer"("name");
