/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phat.struts2;

import phat.registration.RegistrationDAO;

/**
 *
 * @author user
 */
public class UpdateAction {
    private String username;
    private String password;
    private String lastSearchValue;
    private boolean role;
    private final String SUCCESS = "success";
    private final String FAIL = "fail";
    public UpdateAction() {
    }
    
    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        boolean result = dao.updatePassRole(username, password,role);
        String url = FAIL;
        if(result){
            url = SUCCESS;
        }
        return url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastSearchValue() {
        return lastSearchValue;
    }

    public void setLastSearchValue(String lastSearchValue) {
        this.lastSearchValue = lastSearchValue;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

   
    
}
