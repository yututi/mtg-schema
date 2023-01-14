-- AlterTable
ALTER TABLE "Card" ADD COLUMN     "hasTwoSpell" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "isMainSpell" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "isReversible" BOOLEAN NOT NULL DEFAULT false;
