package com.XJK.dao.impl;

import com.XJK.dao.ArticleDao;
import com.XJK.pojo.Article;

import java.util.List;

public class ArticleDaoImpl extends BaseDao implements ArticleDao {
    /**
     * 根据title查询文章内容
     * @param title
     * @return
     */
    @Override
    public Article queryContentByTitle(String title) {
        String sql = "select id, title, content from t_article where title = ?";
        List<Article> articleList = queryArticle(sql, title);
        if (articleList.size() > 0 ){
            return (Article) articleList.get(0);
        }
        return null;
    }

    /**
     * 添加文章
     * @param article
     * @return
     */
    @Override
    public int saveArticle(Article article) {
        String sql = "insert into t_article(title, content) values (?,?)";
        return update(sql, article.getTitle(),article.getContent());
    }

    /**
     * 获取所有文章
     * @return
     */
    @Override
    public List<Article> queryAllArticle() {
        String sql = "select * from t_article";
        return queryArticle(sql);

    }

    @Override
    public int deleteArticleByTitle(String title) {
        String sql = "delete from t_article where title = ?";
        return update(sql, title);
    }

    /**
     * 更新存在的文章的内容
     * @param article
     * @return
     */
    @Override
    public int updateArticleByTitle(Article article) {
        //先获取id
        Long id  = queryContentByTitle(article.getTitle()).getId();
        //根据id更新content
        String sql = "update t_article set content=? where id=?";
        return update(sql, article.getContent(),id);
    }
}
