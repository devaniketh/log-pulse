-- CreateTable
CREATE TABLE "public"."Log" (
    "id" SERIAL NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "level" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "source" TEXT,

    CONSTRAINT "Log_pkey" PRIMARY KEY ("id")
);
