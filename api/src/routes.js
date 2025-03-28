
const express = require('express');
const router = express.Router();

const alunoController = require('./controllers/alunos');
const telefoneController = require('./controllers/telefone');
const atividadeController = require('./controllers/atividades');

router.post('/alunos', alunoController.create);
router.get('/alunos', alunoController.read);
router.get('/alunos/:ra', alunoController.readOne);
router.put('/alunos/:ra', alunoController.update);
router.delete('/alunos/:ra', alunoController.remove);

router.post('/telefones', telefoneController.create);
router.get('/telefones', telefoneController.read);
router.put('/telefones/:id', telefoneController.update);
router.delete('/telefones/:id', telefoneController.remove);

router.post('/atividades', atividadeController.create);
router.get('/atividades', atividadeController.read);
router.put('/atividades/:id', atividadeController.update);
router.delete('/atividades/:id', atividadeController.remove);

router.get('/', (req, res) => {
    return res.json({ titulo: 'Escola ACME' });
  });

module.exports = router;
