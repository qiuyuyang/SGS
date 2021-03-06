--
-- Author: Liangxu
-- Date: 2017-03-01 13:41:16
-- 武将详情 羁绊模块
local ListViewCellBase = require("app.ui.ListViewCellBase")
local HeroDetailYokeModule = class("HeroDetailYokeModule", ListViewCellBase)
local UserDataHelper = require("app.utils.UserDataHelper")
local YokeDesNode = require("app.scene.view.team.YokeDesNode")
local CSHelper = require("yoka.utils.CSHelper")

function HeroDetailYokeModule:ctor(heroYoke)
	self._heroYoke = heroYoke

	local resource = {
		file = Path.getCSB("HeroDetailDynamicModule2", "hero"),
		binding = {

		}
	}
	HeroDetailYokeModule.super.ctor(self, resource)
end

function HeroDetailYokeModule:onCreate()
	local title = self:_createTitle()
	self._listView:pushBackCustomItem(title)

	for i, info in ipairs(self._heroYoke.yokeInfo) do
		local des = self:_createDes(info)
		self._listView:pushBackCustomItem(des)
	end

	self._listView:doLayout()
	local contentSize = self._listView:getInnerContainerSize()
	contentSize.height = contentSize.height + 10
	self._listView:setContentSize(contentSize)
	self:setContentSize(contentSize)
end

function HeroDetailYokeModule:_createTitle()
	local title = CSHelper.loadResourceNode(Path.getCSB("CommonDetailTitleWithBg2", "common"))
	title:setFontSize(22)
	title:setTitle(Lang.get("hero_detail_title_yoke"))
	local widget = ccui.Widget:create()
	local titleSize = cc.size(326, 34)
	local widgetSize = cc.size(326, 34 + 10)

	widget:setContentSize(widgetSize)
	title:setPosition(titleSize.width / 2, titleSize.height / 2 + 7)
	widget:addChild(title)
	return widget
end

function HeroDetailYokeModule:_createDes(info)
	local widget = ccui.Widget:create()

	local isActive = info.isActivated
	local desColor = isActive and Colors.BRIGHT_BG_GREEN or Colors.BRIGHT_BG_TWO

	local fateType = info.fateType
	local name = Lang.get("hero_detail_yoke_name", {name = info.name})
	
	local labelName = cc.Label:createWithTTF(name, Path.getCommonFont(), 18)
	labelName:setAnchorPoint(cc.p(0, 1))
	labelName:setLineHeight(26)
	if not Lang.checkLang(Lang.CN) then
		labelName:setWidth(125)
	else
		labelName:setWidth(125)
	end
	
	labelName:setColor(desColor)

	local yokeDesNode = YokeDesNode.new(true)
	yokeDesNode:updateView(info, 165, 0)
	yokeDesNode:setAnchorPoint(cc.p(0, 1))
	local height = yokeDesNode:getContentSize().height
	if not Lang.checkLang(Lang.CN) then
		height = math.max(height,labelName:getContentSize().height)
		labelName:setPosition(cc.p(24-10, height + 10))
		yokeDesNode:setPosition(cc.p(145+7, height + 10))
	else
		labelName:setPosition(cc.p(24, height + 10))
		yokeDesNode:setPosition(cc.p(145, height + 10))
	end
	widget:addChild(labelName)
	widget:addChild(yokeDesNode)
 
	local size = cc.size(402, height + 10)
	widget:setContentSize(size)
	
	return widget
end

return HeroDetailYokeModule