local http = require("http")
local json = require'json'
local inspect = require 'inspect'

function deb(t)
   for k,v in pairs(t) do
      print(k, v)
   end
end


function parse_wiki(text)
   return text
end

function search_wikipedia()
   local b= ""
   local req =
      http.request({
                      host = "luvit.io",
                      port = 80,
                      path = "/"
                   }, function (res)
                      res:on('data', function (chunk)
                                p("ondata", {chunk=chunk})
                                b= b .. chunk
                                     end)
                      res:on("end", function ()
                                res:destroy()
                                return b
                                    end)
                      end)
   req:done()
end

-- http://en.wikipedia.org/w/api.php?action=query&titles=Michael_Jackson&prop=revisions&rvprop=content&format=jsonfm
local http = require("http")

http.createServer(function (req, res)
local content=""
local body

local options = {
   host = "api-sentiment.3scale.net",
   port = 80,
}


print(req.url)
local word = req.url:match('^/(.*)$')

options.path = "/v1/word/" .. word  .. ".json"

local req2 = http.request(options, function (res2)
                             res2:on('data', function (chunk)
                                        content = content .. chunk
                                        -- p("ondata", {chunk=chunk})
                                             end)
                             res2:on('end', function()
                                        p("onend", { data = content })
                                        body=content
                                        res:writeHead(200, {
                                                         ["Content-Type"] = "text/plain",
                                                         ["Content-Length"] = #body
                                                           })
                                        res:finish(body)
                                            end)
                                   end)
req2:done()


end):listen(8080)

print("Server listening at http://localhost:8080/")
