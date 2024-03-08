-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `role` ENUM('ADMIN', 'USER') NOT NULL DEFAULT 'USER',

    UNIQUE INDEX `User_username_key`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `price` DOUBLE NOT NULL,
    `minOrderQuantity` INTEGER NOT NULL,
    `category` VARCHAR(191) NOT NULL,
    `brand` VARCHAR(191) NULL,
    `images` VARCHAR(191) NULL,
    `mountingType` VARCHAR(191) NULL,
    `material` VARCHAR(191) NULL,
    `automationGrade` VARCHAR(191) NULL,
    `serviceMode` VARCHAR(191) NULL,
    `paymentMode` VARCHAR(191) NULL,
    `timeDuration` VARCHAR(191) NULL,
    `location` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
