/*
    open - WebSocket open tests
 */

const PORT = App.config.test.http_port || "4100"
const WS = "ws://127.0.0.1:" + PORT + "/websockets/basic/open"

assert(WebSocket)
let ws = new WebSocket(WS)
assert(ws)
assert(ws.readyState == WebSocket.CONNECTING)

let opened = false
ws.onopen = function (event) {
    opened = true
}
ws.wait(WebSocket.OPEN, 5000)
assert(opened)
assert(ws.readyState == WebSocket.OPEN)