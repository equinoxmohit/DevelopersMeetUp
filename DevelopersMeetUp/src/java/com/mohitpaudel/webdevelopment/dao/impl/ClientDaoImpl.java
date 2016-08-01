/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webdevelopment.dao.impl;

import com.mohitpaudel.webdevelopment.dao.ClientDao;
import com.mohitpaudel.webdevelopment.entity.Client;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Mohit
 */
public class ClientDaoImpl implements ClientDao {

    private ArrayList<Client> clientList = new ArrayList<>();

    @Override
    public ArrayList<Client> getAll() throws SQLException, ClassNotFoundException {
        return clientList;
    }

    @Override
    public boolean add(Client client) throws SQLException, ClassNotFoundException {
        return clientList.add(client);
    }

}
