/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webdevelopment.entity;

/**
 *
 * @author Mohit
 */
public class Programmer {

    private int id, number_of_projects;
    private String full_name, address, contact_number, email_address, googleplus_link, linkedin_link, facebook_link, github_link, main_skill, additional_skills, experience, about_programmer, life_moto;

    public Programmer() {
    }

    public Programmer(int id, int number_of_projects, String full_name, String address, String contact_number, String email_address, String googleplus_link, String linkedin_link, String facebook_link, String github_link, String main_skill, String additional_skills, String experience, String about_programmer, String life_moto) {
        this.id = id;
        this.number_of_projects = number_of_projects;
        this.full_name = full_name;
        this.address = address;
        this.contact_number = contact_number;
        this.email_address = email_address;
        this.googleplus_link = googleplus_link;
        this.linkedin_link = linkedin_link;
        this.facebook_link = facebook_link;
        this.github_link = github_link;
        this.main_skill = main_skill;
        this.additional_skills = additional_skills;
        this.experience = experience;
        this.about_programmer = about_programmer;
        this.life_moto = life_moto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNumber_of_projects() {
        return number_of_projects;
    }

    public void setNumber_of_projects(int number_of_projects) {
        this.number_of_projects = number_of_projects;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    public String getEmail_address() {
        return email_address;
    }

    public void setEmail_address(String email_address) {
        this.email_address = email_address;
    }

    public String getGoogleplus_link() {
        return googleplus_link;
    }

    public void setGoogleplus_link(String googleplus_link) {
        this.googleplus_link = googleplus_link;
    }

    public String getLinkedin_link() {
        return linkedin_link;
    }

    public void setLinkedin_link(String linkedin_link) {
        this.linkedin_link = linkedin_link;
    }

    public String getFacebook_link() {
        return facebook_link;
    }

    public void setFacebook_link(String facebook_link) {
        this.facebook_link = facebook_link;
    }

    public String getGithub_link() {
        return github_link;
    }

    public void setGithub_link(String github_link) {
        this.github_link = github_link;
    }

    public String getMain_skill() {
        return main_skill;
    }

    public void setMain_skill(String main_skill) {
        this.main_skill = main_skill;
    }

    public String getAdditional_skills() {
        return additional_skills;
    }

    public void setAdditional_skills(String additional_skills) {
        this.additional_skills = additional_skills;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getAbout_programmer() {
        return about_programmer;
    }

    public void setAbout_programmer(String about_programmer) {
        this.about_programmer = about_programmer;
    }

    public String getLife_moto() {
        return life_moto;
    }

    public void setLife_moto(String life_moto) {
        this.life_moto = life_moto;
    }

}
