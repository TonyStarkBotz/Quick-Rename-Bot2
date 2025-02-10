#🔥 Don't Remove Credit ➤ @DigitalGalaxyHQ
#🎥 Subscribe our Youtube Channel for Awesome Bots! ➤ @DigitalGalaxyHQ
#💬 Have Questions? Ask on Telegram! ➤ @Tony_Stark_75

from aiohttp import web

routes = web.RouteTableDef()


@routes.get("/", allow_head=True)
async def root_route_handler(request):
    return web.json_response("https://t.me/Quick_RenameBot")


async def web_server():
    web_app = web.Application(client_max_size=30000000)
    web_app.add_routes(routes)
    return web_app
