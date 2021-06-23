/**
 * 后台首页
 */
const express = require('express')
const article = require('../../middleware/article')
const category = require('../../middleware/category')
const pv = require('../../middleware/pv')
const user = require('../../middleware/user')

const indexApp = express()


indexApp.get('/',[user.lastLoginTime,pv.getTotal,article.getCount,category.getCount],(req,res) => {
    let {user,lastLoginTime,pvTotal,articleCount,categoryCount} = req
    res.render('admin/index',{user:user,lastLoginTime:lastLoginTime,pvTotal:pvTotal,articleCount:articleCount,categoryCount:categoryCount})
})

module.exports = indexApp