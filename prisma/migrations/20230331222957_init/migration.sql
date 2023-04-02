/*
  Warnings:

  - The primary key for the `catroutes` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `irouteud` on the `catroutes` table. All the data in the column will be lost.
  - Added the required column `irouteid` to the `catroutes` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `catroutes` DROP PRIMARY KEY,
    DROP COLUMN `irouteud`,
    ADD COLUMN `irouteid` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`irouteid`);

-- CreateTable
CREATE TABLE `catroles` (
    `iroleid` INTEGER NOT NULL AUTO_INCREMENT,
    `dtcreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dtupdated` DATETIME(3) NULL,
    `vrole` VARCHAR(255) NULL,
    `vdescription` VARCHAR(255) NULL,
    `ishowclient` BOOLEAN NOT NULL DEFAULT true,
    `iactivo` BOOLEAN NOT NULL DEFAULT true,

    UNIQUE INDEX `catroles_vrole_key`(`vrole`),
    PRIMARY KEY (`iroleid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
