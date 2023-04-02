-- AddForeignKey
ALTER TABLE `rel_roleroutepermiso` ADD CONSTRAINT `rel_roleroutepermiso_irouteid_fkey` FOREIGN KEY (`irouteid`) REFERENCES `catroutes`(`irouteid`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `rel_roleroutepermiso` ADD CONSTRAINT `rel_roleroutepermiso_ipermisoid_fkey` FOREIGN KEY (`ipermisoid`) REFERENCES `catpermisos`(`ipermisoid`) ON DELETE RESTRICT ON UPDATE CASCADE;
