/*
  Warnings:

  - You are about to drop the column `otherFaceUuid` on the `Card` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Card" DROP COLUMN "otherFaceUuid",
ADD COLUMN     "otherFaceUuids" TEXT[];

-- CreateIndex
CREATE INDEX "Card_otherFaceUuids_idx" ON "Card" USING GIN ("otherFaceUuids");
