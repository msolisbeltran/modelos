-- CreateTable
CREATE TABLE `rel_roleroutepermiso` (
    `iroleroutepermisoid` INTEGER NOT NULL AUTO_INCREMENT,
    `dtcreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dtupdated` DATETIME(3) NULL,
    `iroleid` INTEGER NOT NULL,
    `irouteid` INTEGER NOT NULL,
    `ipermisoid` INTEGER NOT NULL,

    UNIQUE INDEX `rel_roleroutepermiso_iroleid_irouteid_ipermisoid_key`(`iroleid`, `irouteid`, `ipermisoid`),
    PRIMARY KEY (`iroleroutepermisoid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `rel_roleroutepermiso` ADD CONSTRAINT `rel_roleroutepermiso_iroleid_fkey` FOREIGN KEY (`iroleid`) REFERENCES `catroles`(`iroleid`) ON DELETE RESTRICT ON UPDATE CASCADE;
