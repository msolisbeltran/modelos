-- CreateTable
CREATE TABLE `catroutes` (
    `irouteud` INTEGER NOT NULL AUTO_INCREMENT,
    `dtcreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dtupdated` DATETIME(3) NULL,
    `vroute` VARCHAR(255) NULL,
    `vfeature` VARCHAR(255) NULL,
    `iactivo` BOOLEAN NOT NULL DEFAULT true,

    INDEX `catroutes_vroute_vfeature_idx`(`vroute`, `vfeature`),
    PRIMARY KEY (`irouteud`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
