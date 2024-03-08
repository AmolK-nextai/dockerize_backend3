/*
  Warnings:

  - You are about to alter the column `projectImage` on the `project` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Json`.

*/
-- AlterTable
ALTER TABLE `project` MODIFY `projectImage` JSON NOT NULL;
