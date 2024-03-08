/*
  Warnings:

  - You are about to alter the column `images` on the `product` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Json`.

*/
-- AlterTable
ALTER TABLE `product` ADD COLUMN `description` VARCHAR(191) NULL,
    MODIFY `images` JSON NULL;
