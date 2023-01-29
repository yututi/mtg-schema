/*
  Warnings:

  - You are about to drop the column `hasTwoSpell` on the `Card` table. All the data in the column will be lost.
  - You are about to drop the column `isFrontFace` on the `Card` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Card" DROP COLUMN "hasTwoSpell",
DROP COLUMN "isFrontFace";
