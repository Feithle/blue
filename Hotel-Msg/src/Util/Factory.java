package Util;


import Dao.MsgDao;

public class Factory {
	public static MsgDao getDaoImpl() {
		return new MsgDao();
	}
}
