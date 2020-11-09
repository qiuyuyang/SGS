
local ListViewCellBase = require("app.ui.ListViewCellBase")
local PopupLevelPkgMenuTipsItemCell = class("PopupLevelPkgMenuTipsItemCell", ListViewCellBase)


function PopupLevelPkgMenuTipsItemCell:ctor()
	local resource = {
		file = Path.getCSB("PopupLevelPkgMenuTipsItemCell", "new_level_pkg"),
		binding = {
		},
	}
	PopupLevelPkgMenuTipsItemCell.super.ctor(self, resource)
end

function PopupLevelPkgMenuTipsItemCell:onCreate()
	-- body
	local size = self._resourceNode:getContentSize()
    self:setContentSize(size.width, size.height)
    
    self._button = ccui.Helper:seekNodeByName(self._menu, "Button")
    self._button:setSwallowTouches(false)
    self._button:addTouchEventListener(handler(self, self._onTouchCallBack))
    --self._menu:addClickEventListenerEx(handler(self, self._onButtonClick))
end


function PopupLevelPkgMenuTipsItemCell:updateUI(data)
    self._data = data
    self._menu:updateUI(data.functionId)
    self._menu:moveLetterToRight()
    self._menu:setBgScale(0.65)
    self._menu:playBtnMoving()
    self._menu:playFuncGfx()
   -- self._menu:setTouchEnabled(false)
  
    local curTime = G_ServerTime:getTime()
    if data.endTime > curTime then
        self._menu:openCountDown(data.endTime,nil,true,0.8,-37)
    else
        self._menu:removeCustomLabel()
    end
end

function PopupLevelPkgMenuTipsItemCell:_onButtonClick()
    G_SceneManager:showDialog("app.scene.view.newLevelPkg.PopupLevelPkg", nil, nil,
        self._data.condition,self._data.conditionValue)
end

function PopupLevelPkgMenuTipsItemCell:_onTouchCallBack(sender,state)
	-----------防止拖动的时候触发点击
	if(state == ccui.TouchEventType.ended)then
		local moveOffsetX = math.abs(sender:getTouchEndPosition().x-sender:getTouchBeganPosition().x)
		local moveOffsetY = math.abs(sender:getTouchEndPosition().y-sender:getTouchBeganPosition().y)
		if moveOffsetX < 20 and moveOffsetY < 20 then
            G_SceneManager:showDialog("app.scene.view.newLevelPkg.PopupLevelPkg", nil, nil,
            self._data.condition,self._data.conditionValue)
		end
	end
end


return PopupLevelPkgMenuTipsItemCell
