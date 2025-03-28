CREATE TABLE `Aluno` (
    `ra` VARCHAR(10) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Aluno_email_key`(`email`),
    PRIMARY KEY (`ra`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `Telefone` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `numero` VARCHAR(191) NOT NULL,
    `tipo` VARCHAR(191) NOT NULL,
    `alunoId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE `Atividade` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `descricao` VARCHAR(191) NOT NULL,
    `peso` DOUBLE NOT NULL,
    `dataInicio` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dataEntrega` DATETIME(3) NULL,
    `nota` DOUBLE NULL,
    `parcial` DOUBLE NULL,
    `alunoId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


ALTER TABLE `Telefone` ADD CONSTRAINT `Telefone_alunoId_fkey` FOREIGN KEY (`alunoId`) REFERENCES `Aluno`(`ra`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `Atividade` ADD CONSTRAINT `Atividade_alunoId_fkey` FOREIGN KEY (`alunoId`) REFERENCES `Aluno`(`ra`) ON DELETE CASCADE ON UPDATE CASCADE;
