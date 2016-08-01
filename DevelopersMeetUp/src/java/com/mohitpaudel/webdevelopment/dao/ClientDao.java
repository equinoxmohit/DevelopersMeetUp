/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webdevelopment.dao;

import com.mohitpaudel.webdevelopment.entity.Client;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Mohit
 */
public interface ClientDao {
    
    ArrayList<Client> getAll() throws SQLException, ClassNotFoundException;
    
    boolean add(Client client) throws SQLException, ClassNotFoundException;
    
    
    
    
}
