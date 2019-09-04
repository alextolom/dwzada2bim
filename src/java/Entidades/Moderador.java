/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author a1817744
 */
@Entity
@Table(name = "moderador")
@NamedQueries({
    @NamedQuery(name = "Moderador.findAll", query = "SELECT m FROM Moderador m")})
public class Moderador implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idModerador")
    private Integer idModerador;
    @Basic(optional = false)
    @Column(name = "usernameModerador")
    private String usernameModerador;
    @ManyToMany(mappedBy = "moderadorCollection")
    private Collection<Comunidade> comunidadeCollection;

    public Moderador() {
    }

    public Moderador(Integer idModerador) {
        this.idModerador = idModerador;
    }

    public Moderador(Integer idModerador, String usernameModerador) {
        this.idModerador = idModerador;
        this.usernameModerador = usernameModerador;
    }

    public Integer getIdModerador() {
        return idModerador;
    }

    public void setIdModerador(Integer idModerador) {
        this.idModerador = idModerador;
    }

    public String getUsernameModerador() {
        return usernameModerador;
    }

    public void setUsernameModerador(String usernameModerador) {
        this.usernameModerador = usernameModerador;
    }

    public Collection<Comunidade> getComunidadeCollection() {
        return comunidadeCollection;
    }

    public void setComunidadeCollection(Collection<Comunidade> comunidadeCollection) {
        this.comunidadeCollection = comunidadeCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idModerador != null ? idModerador.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Moderador)) {
            return false;
        }
        Moderador other = (Moderador) object;
        if ((this.idModerador == null && other.idModerador != null) || (this.idModerador != null && !this.idModerador.equals(other.idModerador))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Moderador[ idModerador=" + idModerador + " ]";
    }
    
}
