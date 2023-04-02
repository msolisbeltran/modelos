-- CreateTable
CREATE TABLE `User` (
    `ipermisoid` INTEGER NOT NULL AUTO_INCREMENT,
    `dtcreated` VARCHAR(191) NOT NULL,
    `dtupdated` VARCHAR(191) NULL,
    `vpermiso` VARCHAR(191) NULL,
    `vdescripcion` VARCHAR(191) NULL,
    `iactivo` BOOLEAN NOT NULL,

    UNIQUE INDEX `User_dtcreated_key`(`dtcreated`),
    PRIMARY KEY (`ipermisoid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
