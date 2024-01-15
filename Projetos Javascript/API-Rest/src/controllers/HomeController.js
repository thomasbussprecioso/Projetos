import Aluno from '../models/Aluno';

class HomeController {
  async index(req, res) {
    const novoAluno = await Aluno.create({
      nome: 'Thomas2',
      sobrenome: 'Buss Precioso',
      email: 'thomas.precioso@hotmail.com',
      idade: 31,
      peso: 100,
      altura: 2,
    });
    res.json(novoAluno);
  }
}

export default new HomeController();
