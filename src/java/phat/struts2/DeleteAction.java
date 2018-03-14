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
public class DeleteAction {
    private String pk;
    private String lastSearchValue;
    private final String SUCCESS = "success";
    private final String FAIL = "fail";
    public DeleteAction() {
    }
    
    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        boolean result = dao.deletePK(pk);
        String url = FAIL;
        if(result){
            url = SUCCESS;
        }
         return url;
    }

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }

    public String getLastSearchValue() {
        return lastSearchValue;
    }

    public void setLastSearchValue(String lastSearchValue) {
        this.lastSearchValue = lastSearchValue;
    }
    
}
