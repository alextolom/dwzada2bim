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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author a1817744
 */
@Entity
@Table(name = "Comunidade")
@NamedQueries({
    @NamedQuery(name = "Comunidade.findAll", query = "SELECT c FROM Comunidade c")})
public class Comunidade implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idComunidade")
    private Integer idComunidade;
    @Column(name = "nomeComunidade")
    private String nomeComunidade;
    @Column(name = "moderadorComunidade")
    private String moderadorComunidade;
    @ManyToMany(mappedBy = "comunidadeCollection")
    private Collection<Categoria> categoriaCollection;
    @JoinTable(name = "Comunidade_has_moderador", joinColumns = {
        @JoinColumn(name = "Comunidade_idComunidade", referencedColumnName = "idComunidade")}, inverseJoinColumns = {
        @JoinColumn(name = "moderador_idModerador", referencedColumnName = "idModerador")})
    @ManyToMany
    private Collection<Moderador> moderadorCollection;
    @JoinTable(name = "Comunidade_has_usuario", joinColumns = {
        @JoinColumn(name = "Comunidade_idComunidade", referencedColumnName = "idComunidade")}, inverseJoinColumns = {
        @JoinColumn(name = "usuario_idUsuario", referencedColumnName = "idUsuario")})
    @ManyToMany
    private Collection<Usuario> usuarioCollection;

    public Comunidade() {
    }

    public Comunidade(Integer idComunidade) {
        this.idComunidade = idComunidade;
    }

    public Integer getIdComunidade() {
        return idComunidade;
    }

    public void setIdComunidade(Integer idComunidade) {
        this.idComunidade = idComunidade;
    }

    public String getNomeComunidade() {
        return nomeComunidade;
    }

    public void setNomeComunidade(String nomeComunidade) {
        this.nomeComunidade = nomeComunidade;
    }

    public String getModeradorComunidade() {
        return moderadorComunidade;
    }

    public void setModeradorComunidade(String moderadorComunidade) {
        this.moderadorComunidade = moderadorComunidade;
    }

    public Collection<Categoria> getCategoriaCollection() {
        return categoriaCollection;
    }

    public void setCategoriaCollection(Collection<Categoria> categoriaCollection) {
        this.categoriaCollection = categoriaCollection;
    }

    public Collection<Moderador> getModeradorCollection() {
        return moderadorCollection;
    }

    public void setModeradorCollection(Collection<Moderador> moderadorCollection) {
        this.moderadorCollection = moderadorCollection;
    }

    public Collection<Usuario> getUsuarioCollection() {
        return usuarioCollection;
    }

    public void setUsuarioCollection(Collection<Usuario> usuarioCollection) {
        this.usuarioCollection = usuarioCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idComunidade != null ? idComunidade.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Comunidade)) {
            return false;
        }
        Comunidade other = (Comunidade) object;
        if ((this.idComunidade == null && other.idComunidade != null) || (this.idComunidade != null && !this.idComunidade.equals(other.idComunidade))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Comunidade[ idComunidade=" + idComunidade + " ]";
    }
    
}
