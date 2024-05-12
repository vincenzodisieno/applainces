const $ = require('jquery')(require('jsdom-no-contextify').jsdom().parentWindow)
const XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest
$.support.cors = true;
$.ajaxSettings.xhr = function () {
	return new XMLHttpRequest;
}
const express = require('express')
const ejs = require('ejs')
const app = express()
app.use(express.static(__dirname + '/public'))
app.use(express.urlencoded({ extended: true }))
app.set('view engine', 'ejs')
app.listen(8080)
console.log("Ascoltando sulla porta 8080 http://localhost:8080")

app.get('/', (req, res) =>{
    res.sendFile('index.html', {root: __dirname + '/public'})
})

app.get('/forno', (req, res) =>{
    let percentualeraccolta
    $.ajax('http://php_container/numeropreordini.php', {
            async: false,
            type: 'GET',
            complete: function(response){
                percentualeraccolta = response.responseText
            }
        })
    res.render('forno', {percentuale: percentualeraccolta})
})

app.route('/preordina')
    .get(function(req, res){
        res.sendFile('preordina.html', {root: __dirname + '/public'})
    })
    .post(async function(req, res){
        $.ajax('http://php_container/aggiungi.php', {
            async: false,
            type: 'POST',
            data: req.body,
            complete: function(response){
                if(response.responseText == 1){
                    res.render('conferma', { successo: 'block', errore: 'none'})
                }
                else{
                    res.render('conferma', { errore: 'block', successo: 'none'})
                }
            }
        })
    })

app.all('*', (req, res) =>{
    res.send('errore 404')
})