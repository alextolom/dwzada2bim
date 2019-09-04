package DAOs;

import Entidades.Comunidade;
import java.util.ArrayList;
import java.util.List;

public class DAOComunidade extends DAOGenerico<Comunidade> {

    public DAOComunidade() {
        super(Comunidade.class);
    }

    public int autoIdComunidade() {
        Integer a = (Integer) em.createQuery("SELECT MAX(e.idComunidade) FROM Comunidade e ").getSingleResult();
        if (a != null) {
            return a + 1;
        } else {
            return 1;
        }
    }

    public List<Comunidade> listByNome(String nome) {
        return em.createQuery("SELECT e FROM Comunidade e WHERE e.nomeComunidade LIKE :nome").setParameter("nome", "%" + nome + "%").getResultList();
    }

    public List<Comunidade> listById(int id) {
        return em.createQuery("SELECT e FROM Comunidade e WHERE e.idComunidade = :id").setParameter("id", id).getResultList();
    }

    public List<Comunidade> listInOrderNome() {
        return em.createQuery("SELECT e FROM Comunidade e ORDER BY e.nomeComunidade").getResultList();
    }

    public List<Comunidade> listInOrderId() {
        return em.createQuery("SELECT e FROM Comunidade e ORDER BY e.idComunidade").getResultList();
    }

    public List<String> listInOrderNomeStrings(String qualOrdem) {
        List<Comunidade> lf;
        if (qualOrdem.equals("id")) {
            lf = listInOrderId();
        } else {
            lf = listInOrderNome();
        }

        List<String> ls = new ArrayList<>();
        for (int i = 0; i < lf.size(); i++) {
            ls.add(lf.get(i).getIdComunidade() + "-" + lf.get(i).getNomeComunidade());
        }
        return ls;
    }
}
