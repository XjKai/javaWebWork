package com.XJK.pojo;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Article {
    private Long id;
    private String title;
    private String content;
    public Article() {
    }

    public Article( String title, String content) {
        this.title = title;
        this.content = content;
    }
    public Article(ResultSet resultSet){
        try {
            this.id = resultSet.getLong("id");
            this.title = resultSet.getString("title");
            this.content = resultSet.getString("content");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
