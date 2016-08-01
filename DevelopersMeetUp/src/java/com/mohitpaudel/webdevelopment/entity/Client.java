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
public class Client {

    private String receiver, email, username, subject, message;

    public Client() {
    }

    public Client(String receiver,String email, String username, String subject, String message) {
        this.email = email;
        this.username = username;
        this.subject = subject;
        this.message = message;
        this.receiver=receiver;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }
    
    

    public void setUsername(String username) {
        this.username = username;
    }

   

    
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
