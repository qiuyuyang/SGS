local PopupBase = require("app.ui.PopupBase")
local PopupQinTombSmallMap = class("PopupQinTombSmallMap", PopupBase)
local Path = require("app.utils.Path")
local QinTombConst = require("app.const.QinTombConst")
local UIHelper = require("yoka.utils.UIHelper")
local QinTombHelper = import(".QinTombHelper")

function PopupQinTombSmallMap:ctor()
	self._imageMapBG = nil --背景图
	local resource = {
		file = Path.getCSB("PopupQinTombSmallMap", "qinTomb"),
		binding = {
			_panelTouch = {
				events = {{event = "touch", method = "_onPanelClick"}}
			}
		}
	}
	PopupQinTombSmallMap.super.ctor(self, resource,false)
end

function PopupQinTombSmallMap:onCreate()
	-- i18n pos lable
	self:_dealPosByI18n()
	self._buttonClose:addClickEventListenerEx(handler(self, self._onClickButton))
	--self._panelBk:addClickEventListenerEx(handler(self, self._onPanelClick))

	G_EffectGfxMgr:createPlayGfx(self._autoMovingNode, "effect_xianqinhuangling_zidongxunluzhong", nil, true)
	self._autoMovingNode:setVisible(false)
end

function PopupQinTombSmallMap:_onClickButton( sender )
	self:close()
end


function PopupQinTombSmallMap:onEnter()
--	self:scheduleUpdateWithPriorityLua(handler(self,self._onUpdate),0)
end

function PopupQinTombSmallMap:onExit()
--	self:unscheduleUpdate() 
end


function PopupQinTombSmallMap:convertToBigMapPos( pos )
	-- body
	pos.x = pos.x *QinTombConst.CAMERA_SCALE_MAX
	pos.y = pos.y *QinTombConst.CAMERA_SCALE_MAX
	return pos
end


function PopupQinTombSmallMap:convertToSmallMapPos( pos )
	-- body
	pos.x = pos.x *QinTombConst.CAMERA_SCALE_MIN
	pos.y = pos.y *QinTombConst.CAMERA_SCALE_MIN
	return pos
end


function PopupQinTombSmallMap:_onUpdate( dt )
	-- body
	self:updateSelf()
end


function PopupQinTombSmallMap:updateSelf( selfPosX, selfPosY, monsterKey)
	-- body
	QinTombHelper.updateSelfNode(self._imageMapBG,selfPosX,selfPosY)
	QinTombHelper.updateTargetNode(self._imageMapBG)
	QinTombHelper.updateMiniMapAttackTeam(self._imageMapBG, monsterKey)
	QinTombHelper.updateMiniMapMonsterFight(self._imageMapBG)
	self:updateAuotMovingEffect()

	-- 争夺区发光特效
	--G_EffectGfxMgr:createPlayGfx(self._autoMovingNode, "effect_xianqinhuangling_zhengduofaguang", nil, true)
end


function PopupQinTombSmallMap:_onPanelClick( sender,state )
	-- body

	 if state == ccui.TouchEventType.ended or not state then
		local moveOffsetX = math.abs(sender:getTouchEndPosition().x-sender:getTouchBeganPosition().x)
		local moveOffsetY = math.abs(sender:getTouchEndPosition().y-sender:getTouchBeganPosition().y)
		if moveOffsetX < 20 and moveOffsetY < 20 then
			local endX = sender:getTouchEndPosition().x * QinTombConst.CAMERA_SCALE_MAX
			local endY = sender:getTouchEndPosition().y * QinTombConst.CAMERA_SCALE_MAX

			local endPos = self._panelTouch:convertToNodeSpace( sender:getTouchEndPosition() )
			endPos = self:convertToBigMapPos(endPos)
			
			local clickPoint = G_UserData:getQinTomb():findPointKey(endPos)
			dump(clickPoint)
			local selfTeam = G_UserData:getQinTomb():getSelfTeam()

            if QinTombHelper.checkTeamLeaveBattle(selfTeam, clickPoint) then
                --G_Prompt:showTip(Lang.get("qin_tomb_error2"))
                return
            end

			--检查是否可以移动
			if QinTombHelper.checkTeamCanMoving(selfTeam, clickPoint) then
				QinTombHelper.movingTeam(selfTeam:getTeamId(), clickPoint)
			end

			--dump(clickPoint)
			--if clickPoint then
			--end
		end
	end
end


--更新自动寻路特效
function PopupQinTombSmallMap:updateAuotMovingEffect( ... )
	-- body
	local selfTeam = G_UserData:getQinTomb():getSelfTeam()
	if selfTeam == nil then
		return
	end

	self._autoMovingNode:setVisible(false)
	if selfTeam:getCurrState() == QinTombConst.TEAM_STATE_MOVING then
		self._autoMovingNode:setVisible(true)
	end
end

-- i18n pos lable
function PopupQinTombSmallMap:_dealPosByI18n()
	if  not Lang.checkLang(Lang.CN) then
		local UIHelper  = require("yoka.utils.UIHelper")	
		local image1 = UIHelper.seekNodeByName(self._panelBk,"Image_1")
		local image100 = UIHelper.seekNodeByName(self._panelBk,"Image_1_0_0")
		local image10 = UIHelper.seekNodeByName(self._panelBk,"Image_1_0")
		image1:ignoreContentAdaptWithSize(true)
		image100:ignoreContentAdaptWithSize(true)
		image10:ignoreContentAdaptWithSize(true)
		if  Lang.checkLang(Lang.VN) then
			image10:setPositionX(image10:getPositionX()+25)
			image10:setPositionY(image10:getPositionY()+60)
			image1:setPositionY(image1:getPositionY()+30)
			image1:setPositionX(image1:getPositionX()+40)
			image100:setPositionY(image100:getPositionY()+15)
			image100:setPositionX(image100:getPositionX()-10)
		elseif Lang.checkLang(Lang.JA) then
			image1:setPosition(195,347)
			image100:setPosition(760,471)
			image10:setPosition(820,220)
		end
	end
end

return PopupQinTombSmallMap
