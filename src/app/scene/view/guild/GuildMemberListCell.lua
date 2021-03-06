--
-- Author: Liangxu
-- Date: 2017-06-22 15:15:52
-- 军团大厅成员列表Cell
local ListViewCellBase = require("app.ui.ListViewCellBase")
local GuildMemberListCell = class("GuildMemberListCell", ListViewCellBase)
local UserDataHelper = require("app.utils.UserDataHelper")
local TextHelper = require("app.utils.TextHelper")
local TypeConvertHelper = require("app.utils.TypeConvertHelper")

function GuildMemberListCell:ctor()
	local resource = {
		file = Path.getCSB("GuildMemberListCell", "guild"),
		binding = {
	
		}
	}
	GuildMemberListCell.super.ctor(self, resource)
end

function GuildMemberListCell:onCreate()
	local size = self._resourceNode:getContentSize()
	self:setContentSize(size.width, size.height)

	-- i18n pos lable
	self:_dealPosByI18n()
end

function GuildMemberListCell:update(data,index)
	local heroBaseId = data:getBase_id()
	local heroName = data:getName()
	local official = data:getOfficer_level()
	local officialName, officialColor,officialInfo = UserDataHelper.getOfficialInfo(official)
	local level = data:getLevel()
	local power = TextHelper.getAmountText1(data:getPower())
	local position = data:getPosition()
	local duties = UserDataHelper.getGuildDutiesName(position)
	local contribution = TextHelper.getAmountText1(data:getContribution())
	local contributionWeek = TextHelper.getAmountText1(data:getWeek_contribution())
	local onlineText, color = UserDataHelper.getOnlineText(data:getOffline())
	local activityNum =  G_UserData:getLimitTimeActivity():hasActivityNum()
	local activeRate = math.floor(data:getActive_cnt() * 100 / activityNum) 
	--self._fileNodeIcon:updateUI(heroBaseId)
	--self._official:setString(officialName)
	--self._official:setColor(officialColor)
	self._official:loadTexture(Path.getTextHero(officialInfo.picture))

	self._official:ignoreContentAdaptWithSize(true)


	self._name:setString(heroName)
	self._name:setColor(officialColor)
	require("yoka.utils.UIHelper").updateTextOfficialOutline(self._name, official)
	self._level:setString(level)
	self._power:setString(power)
	self._duties:setString(duties)
--	self._contributionWeek:setString(contributionWeek)
--	self._contributionTotal:setString(contribution)
	self._textActiveRate:setString(Lang.get("guild_member_active_rate",{value = activeRate}))
	self._online:setString(onlineText)
	self._online:setColor(color)

	
	if index % 2 == 0 then
		self._panel:loadTexture(Path.getUICommon("img_com_board_list02b"))
	else
		self._panel:loadTexture(Path.getUICommon("img_com_board_list02a"))
	end
end

function GuildMemberListCell:_onButtonLook()
	self:dispatchCustomCallback()
end


-- i18n pos lable
function GuildMemberListCell:_dealPosByI18n()
	if not Lang.checkLang(Lang.CN) then
		local UIHelper  = require("yoka.utils.UIHelper")
		self._duties:setPositionX(
			self._duties:getPositionX()+38
		)
		self._textActiveRate:setPositionX(
			self._textActiveRate:getPositionX()+20
		)

		self._power:setPositionX(
			self._power:getPositionX()+10
		)

		self._name:setFontSize(self._name:getFontSize()-2)
		self._level:setFontSize(self._level:getFontSize()-2)
		self._duties:setFontSize(self._duties:getFontSize()-2)
		self._textActiveRate:setFontSize(self._textActiveRate:getFontSize()-2)
		self._online:setFontSize(self._online:getFontSize()-2)
		self._online:setPositionX(self._online:getPositionX()-18)
	end
end


return GuildMemberListCell