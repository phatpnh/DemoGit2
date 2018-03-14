/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phat.struts2;

import java.util.List;
import phat.registration.RegistrationDAO;
import phat.registration.RegistrationDTO;

/**
 *
 * @author user
 */
public class SearchAction {
    private String searchValue;
    private final String SUCCESS = "success";
    private List<RegistrationDTO> accounts;
    public SearchAction() {
    }
    
    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        dao.searchLastname(searchValue);
        accounts = dao.getListResult();
        return SUCCESS;
    }

    public String getSearchValue() {
        return searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }

    public List<RegistrationDTO> getAccounts() {
        return accounts;
    }

    
    
}
