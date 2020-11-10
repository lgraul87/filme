package modelo;

public class Usuario implements ILimitDB {
	private String sNick;
	private String sPassword;

	public Usuario(String sNick, String sPassword) {
		setsNick(sNick);
		setsPassword(sPassword);
	}

	public String getsNick() {
		return this.sNick;
	}

	public void setsNick(String sNick) {

		if (sNick != null && sNick.length() > MIN_STRING_BD && sNick.length() <= MAX_STRING_NICK_BD) {
			this.sNick = sNick;

		}
	}

	public String getsPassword() {
		return this.sPassword;
	}

	public void setsPassword(String sPassword) {
		if (sPassword != null && sPassword.length() > MIN_STRING_BD && sPassword.length() <= MAX_STRING_PASSWORD_BD) {
			this.sPassword = sPassword;

		}
	}

}
