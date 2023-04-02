/*
  Warnings:

  - A unique constraint covering the columns `[vroute,vfeature]` on the table `catroutes` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `catroutes_vroute_vfeature_idx` ON `catroutes`;

-- CreateIndex
CREATE UNIQUE INDEX `catroutes_vroute_vfeature_key` ON `catroutes`(`vroute`, `vfeature`);
