const Article = require('../model/article')
const PV = require('../model/pv')
const Tab = require('../model/tab')

/**
 * 文章中间件
 */
module.exports = {
    /**
     * 获取热门文章
     * @param {*} req 
     * @param {*} res 
     * @param {*} next 
     */
    getHot: (req, res, next) => {
        Article.getHot(3).then(results => {
            req.hots = results
            next()
        }).catch(err => {
            next(err)
        })
    },

    /**
     * 获取最新文章
     */
    getList:(req,res,next) =>{
        Article.getList().then(results => {
            req.articles = results
            next()
        }).catch(err => {
            next(err)
        })
    },


    /**
     * 获取指定类目下的文章列表
     */
     getListByCategoryId:(req,res,next) =>{
        let id = req.params.id
        Article.getListByCategoryId(id).then(results => {
            req.articles = results
            next()
        }).catch(err => {
            next(err)
        })
    },
    

    /**
     * 获取指定关键词文章列表
     */
     getListByKeyword:(req,res,next) =>{
        let keyword = req.query.keyword
        Article.getListByKeyword(keyword).then(results => {
            req.articles = results
            next()
        }).catch(err => {
            next(err)
        })
    },

    /**
     * 获取指定文章详情
     */
     getArticleById:(req,res,next) =>{
        let id = req.params.id
        Article.getArticleById(id).then(results => {
            req.article = results
            next()
        }).catch(err => {
            next(err)
        })
    },

    
    /**
     * 获取指定文章详情
     */
     getTabs:(req,res,next) =>{
        let id = req.params.id
        Tab.getTabArticleById(id).then(results => {
            req.tabs = results
            next()
        }).catch(err => {
            next(err)
        })
    },

    /**
     * 获取上一篇文章
     */
     getPrev:(req,res,next) =>{
        let id = req.params.id
        Article.getPrevArticle(id).then(results => {
            req.prev = results
            next()
        }).catch(err => {
            next(err)
        })
    },

    /**
     * 获取下一篇文章
     */
     getNext:(req,res,next) =>{
        let id = req.params.id
        Article.getNextArticle(id).then(results => {
            req.next = results
            next()
        }).catch(err => {
            next(err)
        })
    },

    /**
         * 获取总博文数
         */
    getCount:(req,res,next) =>{
        Article.getCount().then(results => {
            req.articleCount = results
            next()
        }).catch(err => {
            next(err)
        })
    },
}