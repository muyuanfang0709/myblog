const { resolveInclude } = require('ejs')

/**
 * 用户登录模型
 */
module.exports = class User extends require('./model') {
     /**
      * 用户登录
      * @param {string} username 登录账号
      * @param {string} password 登录密码
      * @returns 
      */
    static login(username,password){
        return new Promise((resolve, reject) => {
            let sql = 'SELECT id ,username FROM `user`  WHERE username = ? AND PASSWORD = ?'
            this.query(sql,[username,password]).then(results => {
                resolve(results[0])
            }).catch(err => {
                console.log('登录失败：+ err.message')
                reject(err)
            })
        })
    }

    /**
     * 最后一次登录的时间
     * @returns 
     */
    static lastLoginTime(){
        return new Promise((resolve, reject) => {
            let sql = "SELECT time FROM `log` WHERE handle = '登录' ORDER BY time DESC LIMIT 1"
            this.query(sql).then(results => {
                resolve(results[0].time)
            }).catch(err => {
                console.log('登录失败：+ err.message')
                reject(err)
            })
        })
    }
    
}