/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webdevelopment.dao;

import com.mohitpaudel.webdevelopment.entity.Programmer;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Mohit
 */
public interface ProgrammerDao {

    ArrayList<Programmer> getAll() throws SQLException, ClassNotFoundException;

    int add(Programmer p) throws SQLException, ClassNotFoundException;

    Programmer getById(int id) throws SQLException, ClassNotFoundException;

    int delete(int id) throws SQLException, ClassNotFoundException;
    
    int update(Programmer p) throws SQLException, ClassNotFoundException;
    
    
}
