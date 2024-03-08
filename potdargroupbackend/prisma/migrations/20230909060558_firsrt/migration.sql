-- AlterTable
ALTER TABLE `project` ADD COLUMN `projectCategoryId` INTEGER NULL;

-- CreateTable
CREATE TABLE `projectCategory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `catInfo` TEXT NULL,

    UNIQUE INDEX `projectCategory_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Project` ADD CONSTRAINT `Project_projectCategoryId_fkey` FOREIGN KEY (`projectCategoryId`) REFERENCES `projectCategory`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
