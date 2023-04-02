/*
  Warnings:

  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `User`;

-- CreateTable
CREATE TABLE `catpermisos` (
    `ipermisoid` INTEGER NOT NULL AUTO_INCREMENT,
    `dtcreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dtupdated` DATETIME(3) NULL,
    `vpermiso` VARCHAR(255) NULL,
    `vdescripcion` VARCHAR(255) NULL,
    `iactivo` BOOLEAN NOT NULL,

    PRIMARY KEY (`ipermisoid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
