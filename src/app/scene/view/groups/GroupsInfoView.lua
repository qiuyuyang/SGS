
-- Author: zhanglinsen
-- Date:2018-09-27 19:48:02
-- Describle：

local ViewBase = require("app.ui.ViewBase")
local GroupsInfoView = class("GroupsInfoView", ViewBase)
local GroupsInfoNode = require("app.scene.view.groups.GroupsInfoNode")

function GroupsInfoView:ctor()
	self._popBase = nil  --CommonNormalLargePop
	self._panelRoot = nil --Panel
	self._btnChat = nil --Button

	self._infoView = nil

	local resource = {
		file = Path.getCSB("GroupsInfoView", "groups"),
		size = G_ResolutionManager:getDesignSize(),
	}
	GroupsInfoView.super.ctor(self, resource)
end

function GroupsInfoView:onCreate()
	if not Lang.checkLang(Lang.CN)  then
		self:_dealI18n()
	end
	--i8n BUG 
	--self._popBase:setCloseVisible(false)
	self._popBase:setTitle(Lang.get("groups_member_title"))
end

function GroupsInfoView:onEnter()
	if self:_checkIsInGroup() == false then --如果不在队伍中
		return
	end
	self:refreshView()
end

function GroupsInfoView:onExit()

end

function GroupsInfoView:_checkIsInGroup()
	local myGroupData = G_UserData:getGroups():getMyGroupData()
	if myGroupData then
		return true
	else
		return false
	end
end

function GroupsInfoView:refreshView()
	local chooseView = self:_getInfoView()
	chooseView:updateInfo()
end

function GroupsInfoView:_getInfoView()
	local infoView = self._infoView
	if infoView == nil then
		infoView = GroupsInfoNode.new()
		infoView:setCascadeOpacityEnabled(true)
		self._panelRoot:addChild(infoView)
		self._infoView = infoView
	end
	return infoView
end

-- i18n pos lable
function GroupsInfoView:_dealI18n()
	if not Lang.checkLang(Lang.CN)  then
		local UIHelper  = require("yoka.utils.UIHelper")
		local sprite1 = UIHelper.seekNodeByName(self._popBase,"img_qintomb_bg02_1")
		local path = Path.getBackground("img_qintomb_bg02",".jpg")
		sprite1:setTexture(Path.getBackground("img_qintomb_bg02",".jpg"))
	end
end

return GroupsInfoView