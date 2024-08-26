package com.projeto.dao;

import java.util.ArrayList;
import java.util.List;

import com.projeto.bean.Usuario;

public class UsuarioDao {
	
	private static List<Usuario> usuarios = new ArrayList<Usuario>();

	public static List<Usuario> getAll() {
		return usuarios;
	}
	
	public static int save(Usuario usuario) {
		usuarios.add(usuario);
		int index = usuarios.indexOf(usuario);
		return index;
	}
	
	public static Usuario buscarUsuario(int index) {
		return usuarios.get(index);
	}
	
	public static int updateUsuario(Usuario usuario) {
		int index = usuarios.indexOf(usuario);
		usuarios.remove(index);
		usuarios.add(index, usuario);
		return index;
	}
	
	public static void deleteUsuario(Usuario usuario) {
		int index = usuarios.indexOf(usuario);
		usuarios.remove(index);
		
		
	}
	
	
}
