package com.CDWeb.chickenShop.entities.privateKey;

import java.sql.Timestamp;

public class PublicKeyUser {
    private int id;
    private int user_id;
    private String publicKey;
    private Timestamp createAt;
    private int isActive;

    public PublicKeyUser() {
    }

    public PublicKeyUser(int user_id, String publicKey, Timestamp createAt, int isActive) {
        this.user_id = user_id;
        this.publicKey = publicKey;
        this.createAt = createAt;
        this.isActive = isActive;
    }

    public PublicKeyUser(int id, int user_id, String publicKey, Timestamp createAt, int isActive) {
        this.id = id;
        this.user_id = user_id;
        this.publicKey = publicKey;
        this.createAt = createAt;
        this.isActive = isActive;
    }

    public PublicKeyUser(int user_id, String publicKey, int isActive) {
        this.user_id = user_id;
        this.publicKey = publicKey;
        this.isActive = isActive;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getPublicKey() {
        return publicKey;
    }

    public void setPublicKey(String publicKey) {
        this.publicKey = publicKey;
    }

    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    @Override
    public String toString() {
        return "PublicKeyUser{" +
                "user_id=" + user_id +
                ", publicKey='" + publicKey + '\'' +
                ", createAt=" + createAt +
                ", isActive=" + isActive +
                "}\n";
    }
}