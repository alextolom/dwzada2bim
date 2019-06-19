package DAOs;

import Entidades.Moderador;
import java.util.ArrayList;
import java.util.List;

public class DAOModerador extends DAOGenerico<Moderador> {

    public DAOModerador() {
        super(Moderador.class);
    }

    public int autoIdModerador() {
        Integer a = (Integer) em.createQuery("SELECT MAX(e.idModerador) FROM Moderador e ").getSingleResult();
        if (a != null) {
            return a + 1;
        } else {
            return 1;
        }
    }

    public List<Moderador> listByNome(String nome) {
        return em.createQuery("SELECT e FROM Moderador e WHERE e.nomeModerador LIKE :nome").setParameter("nome", "%" + nome + "%").getResultList();
    }

    public List<Moderador> listById(int id) {
        return em.createQuery("SELECT e FROM Moderador e WHERE e.idModerador = :id").setParameter("id", id).getResultList();
    }

    public List<Moderador> listInOrderNome() {
        return em.createQuery("SELECT e FROM Moderador e ORDER BY e.nomeModerador").getResultList();
    }

    public List<Moderador> listInOrderId() {
        return em.createQuery("SELECT e FROM Moderador e ORDER BY e.idModerador").getResultList();
    }

    public List<String> listInOrderNomeStrings(String qualOrdem) {
        List<Moderador> lf;
        if (qualOrdem.equals("id")) {
            lf = listInOrderId();
        } else {
            lf = listInOrderNome();
        }

        List<String> ls = new ArrayList<>();
        for (int i = 0; i < lf.size(); i++) {
            ls.add(lf.get(i).getIdModerador() + "-" + lf.get(i).getUsernameModerador());
        }
        return ls;
    }
}
