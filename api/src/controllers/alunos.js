const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const create = async (req, res) => {
    try {
        const aluno = await prisma.aluno.create({
            data: req.body
        });
        return res.status(201).json(aluno);
    } catch (error) {
        return res.status(400).json({ error: error.message });
    }
};

const read = async (req, res) => {
    const alunos = await prisma.aluno.findMany(
        {
            include: { telefones: true, atividades: true } 
        }
    );
    return res.json(alunos);
};

const readOne = async (req, res) => {
    try {
        const aluno = await prisma.aluno.findUnique({
            where: { ra: req.params.ra }, 
            include: { telefones: true, atividades: true }
        });
        if (!aluno) {
            return res.status(404).json({ error: "Aluno não encontrado" });
        }
        return res.json(aluno);
    } catch (error) {
        return res.status(400).json({ error: error.message });
    }
};

const update = async (req, res) => {
    try {
        const { nota, peso } = req.body;

        if (nota !== undefined && peso !== undefined) {
            req.body.parcial = (nota * peso) / 10; 
        }
        const aluno = await prisma.aluno.update({
            where: { ra: req.params.ra }, 
            data: req.body 
        });

        return res.status(202).json(aluno);
    } catch (error) {
        return res.status(400).json({ error: error.message });
    }
};

const remove = async (req, res) => {
    try {
        await prisma.aluno.delete({
            where: { ra: req.params.ra } 
        });
        return res.status(204).send();
    } catch (error) {
        return res.status(404).json({ error: error.message });
    }
};

module.exports = { create, read, readOne, update, remove };