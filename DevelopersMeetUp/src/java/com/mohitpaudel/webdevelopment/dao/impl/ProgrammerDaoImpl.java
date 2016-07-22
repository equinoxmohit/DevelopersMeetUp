/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webdevelopment.dao.impl;

import com.mohitpaudel.webdevelopment.connector.DbConnector;
import com.mohitpaudel.webdevelopment.dao.ProgrammerDao;
import com.mohitpaudel.webdevelopment.entity.Programmer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProgrammerDaoImpl implements ProgrammerDao {

    DbConnector conn = new DbConnector();

    @Override
    public ArrayList<Programmer> getAll() throws SQLException, ClassNotFoundException {
        ArrayList<Programmer> programmerList = new ArrayList<>();
        String sql = "SELECT * FROM tbl_programmers";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            Programmer p = new Programmer();
            p.setId(rs.getInt("id"));
            p.setFull_name(rs.getString("full_name"));
            p.setAddress(rs.getString("address"));
            p.setContact_number(rs.getString("contact_number"));
            p.setEmail_address(rs.getString("email_address"));
            p.setGoogleplus_link(rs.getString("googleplus_link"));
            p.setLinkedin_link(rs.getString("linkedin_link"));
            p.setFacebook_link(rs.getString("facebook_link"));
            p.setGithub_link(rs.getString("github_link"));
            p.setMain_skill(rs.getString("main_skill"));
            p.setAdditional_skills(rs.getString("additional_skills"));
            p.setNumber_of_projects(rs.getInt("number_of_projects"));
            p.setExperience(rs.getString("experience"));
            p.setAbout_programmer(rs.getString("about_programmer"));
            p.setLife_moto(rs.getString("life_moto"));
            programmerList.add(p);
        }
        conn.close();
        return programmerList;
    }

    @Override
    public int add(Programmer p) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO tbl_programmers(full_name,address,contact_number,email_address,googleplus_link,linkedin_link,facebook_link,github_link,main_skill,additional_skills,number_of_projects,experience,about_programmer,life_moto)"
                + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        conn.open();
        PreparedStatement stmn = conn.initStatement(sql);
        stmn.setString(1, p.getFull_name());
        stmn.setString(2, p.getAddress());
        stmn.setString(3, p.getContact_number());
        stmn.setString(4, p.getEmail_address());
        stmn.setString(5, p.getGoogleplus_link());
        stmn.setString(6, p.getLinkedin_link());
        stmn.setString(7, p.getFacebook_link());
        stmn.setString(8, p.getGithub_link());
        stmn.setString(9, p.getMain_skill());
        stmn.setString(10, p.getAdditional_skills());
        stmn.setInt(11, p.getNumber_of_projects());
        stmn.setString(12, p.getExperience());
        stmn.setString(13, p.getAbout_programmer());
        stmn.setString(14, p.getLife_moto());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public Programmer getById(int id) throws SQLException, ClassNotFoundException {
        Programmer p = null;
        String sql = "SELECT * FROM tbl_programmers WHERE id=?";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setInt(1, id);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            p = new Programmer();
            p.setId(rs.getInt("id"));
            p.setFull_name(rs.getString("full_name"));
            p.setAddress(rs.getString("address"));
            p.setContact_number(rs.getString("contact_number"));
            p.setEmail_address(rs.getString("email_address"));
            p.setGoogleplus_link(rs.getString("googleplus_link"));
            p.setLinkedin_link(rs.getString("linkedin_link"));
            p.setFacebook_link(rs.getString("facebook_link"));
            p.setGithub_link(rs.getString("github_link"));
            p.setMain_skill(rs.getString("main_skill"));
            p.setAdditional_skills(rs.getString("additional_skills"));
            p.setNumber_of_projects(rs.getInt("number_of_projects"));
            p.setExperience(rs.getString("experience"));
            p.setAbout_programmer(rs.getString("about_programmer"));
            p.setLife_moto(rs.getString("life_moto"));

        }
        conn.close();
        return p;
    }

    @Override
    public int delete(int id) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM  tbl_programmers WHERE id=?";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setInt(1, id);
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public int update(Programmer p) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE tbl_programmers SET full_name=?,address=?,contact_number=?,email_address=?,googleplus_link=?,linkedin_link=?,facebook_link=?,github_link=?,main_skill=?,additional_skills=?,number_of_projects=?,experience=?,about_programmer=?,life_moto=? WHERE id=?";
        conn.open();
        PreparedStatement stmn = conn.initStatement(sql);
        stmn.setString(1, p.getFull_name());
        stmn.setString(2, p.getAddress());
        stmn.setString(3, p.getContact_number());
        stmn.setString(4, p.getEmail_address());
        stmn.setString(5, p.getGoogleplus_link());
        stmn.setString(6, p.getLinkedin_link());
        stmn.setString(7, p.getFacebook_link());
        stmn.setString(8, p.getGithub_link());
        stmn.setString(9, p.getMain_skill());
        stmn.setString(10, p.getAdditional_skills());
        stmn.setInt(11, p.getNumber_of_projects());
        stmn.setString(12, p.getExperience());
        stmn.setString(13, p.getAbout_programmer());
        stmn.setString(14, p.getLife_moto());
        stmn.setInt(15, p.getId());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

}
