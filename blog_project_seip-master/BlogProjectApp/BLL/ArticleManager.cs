using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogProjectApp.DAL;
using BlogProjectApp.MODEL;

namespace BlogProjectApp.BLL
{
    public class ArticleManager
    {
        ArticleGateway articleGateway = new ArticleGateway();
        public string Save(Article article)
        {
            if (articleGateway.Save(article) > 0)
            {
                return "Article Save Success";
            }
            else
            {
                return "Article Save Faild!";
            }
        }

        public List<Article> GetArticleList()
        {
            return articleGateway.GetArticleList();
        }

        public List<Article> GetDetailArticle(string articleId)
        {
            return articleGateway.GetDetailArticle(articleId);
        }

        public void HitArticleSave(string articleId)
        {
            articleGateway.HitArticleSave(articleId);
        }

        public List<Article> RecentArticle()
        {
            return articleGateway.RecentArticle();
        }

        public List<Article> MostViewArticle()
        {
            return articleGateway.MostViewArticle();
        }
        public void ChangeStatusModeByArticleId(string articleId)
        {
            string checkStatusMode = articleGateway.ChangeStatusModeByArticleId(articleId);
            if (checkStatusMode == "Publish")
            {
                articleGateway.ChangePublishMode(articleId);
            }
            else if (checkStatusMode == "UnPublish")
            {
                articleGateway.ChangeUnPublishMode(articleId);
            }
        }

        public void DeleteArticle(string articleId)
        {
            articleGateway.DeleteArticle(articleId);
        }

        public List<Article> GetAllPublishArticleList()
        {
            return articleGateway.GetAllPublishArticleList();
        }
    }
}