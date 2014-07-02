package com.entidades;

import java.util.Date;
import javax.jdo.annotations.PrimaryKey;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;


@PersistenceCapable
public class Noticia {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private int m_idNoti;
	@Persistent
	private int m_idDiario;
	@Persistent
	private int m_idCate;
	@Persistent
	private Date m_fecha;
	
	public Noticia(int id, int idDiario, int idCate, Date fecha)
	{
		m_idNoti = id;
		m_idDiario = idDiario;
		m_idCate = idCate;
		m_fecha = fecha;
	}
	
	public void setId(int id)
	{
		m_idNoti= id;
	}
	
	public void setidD(int idDiario)
	{
		m_idDiario = idDiario;
	}
	public void setIdCate(int idCate)
	{
		m_idCate = idCate;
	}
	public void setFecha(Date fecha)
	{
		m_fecha = fecha;
	}
	public int getId()
	{
		return m_idNoti;
	}
	public int getIdDiario()
	{
		return m_idDiario;
	}
	public int getIdCate()
	{
		return m_idCate;
	}
	public Date getFecha()
	{
		return m_fecha;
	}
}
