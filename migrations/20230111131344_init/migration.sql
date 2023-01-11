/*
  Warnings:

  - You are about to drop the column `otherFaceUuids` on the `Card` table. All the data in the column will be lost.
  - Added the required column `otherFaceUuid` to the `Card` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Card_otherFaceUuids_idx";

-- AlterTable
ALTER TABLE "Card" DROP COLUMN "otherFaceUuids",
ADD COLUMN     "otherFaceUuid" TEXT NOT NULL;

-- CreateIndex
CREATE INDEX "Card_otherFaceUuid_idx" ON "Card" USING HASH ("otherFaceUuid");
