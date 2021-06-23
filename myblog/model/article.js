const { resolveInclude } = require('ejs')

/**
 * 文章数据模型
 */
module.exports = class Article extends require('./model') {

    /**
     * 获取热门推荐文章
     * @param {integer} num 条目数
     * @returns 
     */
    static getHot(num) {
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id,title,content,time FROM article WHERE hot = 1 LIMIT ?'
            this.query(sql,num).then(results => {
                resolve(results)
            }).catch(err => {
                console.log('获取热门推荐文章失败：${err.message}')
                reject(err)
            })
        })
    }

    
    /**
     * 获取文章类目列表
     * @returns 
     */
    static getList(){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id,title,content,time FROM article ORDER BY TIME DESC'
            this.query(sql).then(results => {
                resolve(results)
            }).catch(err => {
                console.log('获取文章类目列表失败：${err.message}')
                reject(err)
            })
        })
    }

    /**
     * 获取指定文章类目列表
     * @param {integer} id 类目编号
     * @returns 
     */
    static getListByCategoryId(id){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id,title,content,time FROM article WHERE category_id = ? ORDER BY TIME DESC'
            this.query(sql,id).then(results => {
                resolve(results)
            }).catch(err => {
                console.log('获取指定文章类目列表失败：${err.message}')
                reject(err)
            })
        })
    }


    /**
     * 获取指定关键词文章列表
     * @param {string} keyword 关键词
     * @returns 
     */
     static getListByKeyword(keyword){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id,title,content,time FROM article WHERE title LIKE ? ORDER BY TIME DESC'
            this.query(sql,`%${keyword}%`).then(results => {
                resolve(results)
            }).catch(err => {
                console.log(`获取指定关键词文章列表失败：${err.message}`)
                reject(err)
            })
        })
    }


    /**
     * 获取指定文章详情
     * @param {integer} id 文章编号
     * @returns 
     */
     static getArticleById(id){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT a.id,a.title,a.content,a.time,a.hits,a.category_id, c.`name` FROM article a,category c WHERE a.id = ? AND a.category_id = c.id'
            this.query(sql,id).then(results => {
                resolve(results[0])
            }).catch(err => {
                console.log(`获取指定文章详情失败：${err.message}`)
                reject(err)
            })
        })
    }

    /**
     * 获取上一篇文章
     * @param {integer} id 当前文章编号
     * @returns 
     */
     static getPrevArticle(id){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id,title FROM article WHERE id < ? ORDER BY id DESC LIMIT 1'
            this.query(sql,id).then(results => {
                resolve(results[0])
            }).catch(err => {
                console.log(`获取上一篇文章失败：${err.message}`)
                reject(err)
            })
        })
    }


    /**
     * 获取下一篇文章
     * @param {integer} id 文章编号
     * @returns 
     */
     static getNextArticle(id){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id,title FROM article WHERE id > ? ORDER BY id ASC LIMIT 1'
            this.query(sql,id).then(results => {
                resolve(results[0])
            }).catch(err => {
                console.log(`获取下一篇文章失败：${err.message}`)
                reject(err)
            })
        })
    }

    /**
     * 总博文数
     */
     static getCount(id){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT COUNT(1) AS `count` FROM article'
            this.query(sql).then(results => {
                resolve(results[0].count)
            }).catch(err => {
                console.log(`获取总博文数失败：${err.message}`)
                reject(err)
            })
        })
    } 
}