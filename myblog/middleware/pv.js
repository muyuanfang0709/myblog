/**
 * 访问量中间件
 */

 const Pv  = require('../model/pv')

 module.exports = {
     /**
      * 获取总访问量
      */
     getTotal:(req,res,next) => {
        Pv.getTotal().then(results => {
            req.pvTotal = results
            next()
        }).catch(err => {
            next(err)
        })
     }
 }