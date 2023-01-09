-- CreateTable
CREATE TABLE "LastImported" (
    "sha" TEXT NOT NULL,
    "at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "LastImported_pkey" PRIMARY KEY ("sha")
);

-- CreateTable
CREATE TABLE "Set" (
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Set_pkey" PRIMARY KEY ("code")
);

-- CreateTable
CREATE TABLE "Card" (
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "manaCost" TEXT,
    "manaValue" DOUBLE PRECISION,
    "colorIdentities" TEXT[],
    "types" TEXT[],
    "superTypes" TEXT[],
    "subTypes" TEXT[],
    "isLegendary" BOOLEAN NOT NULL,
    "flavorText" TEXT,
    "text" TEXT,
    "cardTypeJa" TEXT NOT NULL,
    "power" TEXT,
    "toughness" TEXT,
    "loyalty" TEXT,
    "rarity" TEXT,
    "scryfallId" TEXT,
    "otherFaceUuid" TEXT,
    "setCode" TEXT NOT NULL,
    "isImageImported" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Card_pkey" PRIMARY KEY ("uuid")
);

-- CreateIndex
CREATE INDEX "Card_setCode_idx" ON "Card" USING HASH ("setCode");

-- CreateIndex
CREATE INDEX "Card_rarity_idx" ON "Card" USING HASH ("rarity");

-- CreateIndex
CREATE INDEX "Card_manaValue_idx" ON "Card" USING HASH ("manaValue");

-- CreateIndex
CREATE INDEX "Card_colorIdentities_idx" ON "Card" USING GIN ("colorIdentities");

-- CreateIndex
CREATE INDEX "Card_name_idx" ON "Card" USING HASH ("name");

-- CreateIndex
CREATE INDEX "Card_types_idx" ON "Card" USING GIN ("types");

-- AddForeignKey
ALTER TABLE "Card" ADD CONSTRAINT "Card_setCode_fkey" FOREIGN KEY ("setCode") REFERENCES "Set"("code") ON DELETE RESTRICT ON UPDATE CASCADE;
