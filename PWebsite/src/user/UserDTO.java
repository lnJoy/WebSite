package user;

public class UserDTO {

	private String userID;

	private String userPassword;

	private String userEmail;

	private String userEmailHash;

	private boolean userEmailChecked;
	
	private String userNickname;

	public String getUserID() {

		return userID;

	}

	public void setUserID(String userID) {

		this.userID = userID;

	}

	public String getUserPassword() {

		return userPassword;

	}

	public void setUserPassword(String userPassword) {

		this.userPassword = userPassword;

	}

	public String getUserEmail() {

		return userEmail;

	}

	public void setUserEmail(String userEmail) {

		this.userEmail = userEmail;

	}

	public String getUserEmailHash() {

		return userEmailHash;

	}

	public void setUserEmailHash(String userEmailHash) {

		this.userEmailHash = userEmailHash;

	}

	public boolean isUserEmailChecked() {

		return userEmailChecked;

	}

	public void setUserEmailChecked(boolean userEmailChecked) {

		this.userEmailChecked = userEmailChecked;

	}
	
	public String getUserNickname() {

		return userNickname;

	}

	public void setUserNickname(String userNickname) {

		this.userNickname = userNickname;

	}


	public UserDTO(String userID, String userPassword, String userEmail, String userEmailHash, boolean userEmailChecked, String userNickname) {

		this.userID = userID;

		this.userPassword = userPassword;

		this.userEmail = userEmail;

		this.userEmailHash = userEmailHash;

		this.userEmailChecked = userEmailChecked;
		
		this.userNickname = userNickname;

	}

}