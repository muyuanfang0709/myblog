/**
 * 入口模块
 */
const express = require("express");
const session = require("cookie-session");
// 创建主应用
const app = express();

// 模板引擎的设置（将ejs后缀改为html）
app.set("view engine", "html")
app.set("views", "${_dirname}/views")
app.engine("html", require("ejs").renderFile)

// 静态资源配置
app.use(express.static("static"))

// POST请求处理
app.use(express.urlencoded({ extended: true }))

// SESSION配置
app.use(session({
    keys: ['secret'],
    maxAge: 1000 * 60 * 30
}))


// 进入后台的权限验证
app.use('/admin/?*',require('./middleware/auth').allowToAdmin)
// 调用首页子应用
app.use(/\/(index)?/, require("./router/index"))
// 调用文章应用
app.use("/article", require("./router/article"))
// 调用搜索应用
app.use("/search", require("./router/search"))
//调用登录子应用
app.use("/login", require("./router/login"))

// 调用后台首页
app.use(/\/admin\/(index)?/,require('./router/admin/index'))

// 退出登录
app.get('/user/logout', (req, res) => {
  req.session.user = null
  res.render('login', { msg: '退出成功！' })
})

// 监听服务器
app.listen(3000)
console.log("服务器启动成功")
