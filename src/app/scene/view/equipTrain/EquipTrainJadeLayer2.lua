local ViewBase = require("app.ui.ViewBase")
local ListViewCellBase = require("app.ui.ListViewCellBase")
local EquipTrainJadeLayer = class("EquipTrainJadeLayer", ListViewCellBase)
local TypeConvertHelper = require("app.utils.TypeConvertHelper")
local UserDataHelper = require("app.utils.UserDataHelper")
local EquipTrainHelper = require("app.scene.view.equipTrain.EquipTrainHelper")
local EquipConst = require("app.const.EquipConst")
local EquipJadeIcon = require("app.scene.view.equipmentJade.EquipJadeIcon2")
local UIConst = require("app.const.UIConst")

EquipTrainJadeLayer.INJECT = 1 -- 玉石镶嵌
EquipTrainJadeLayer.UNALOAD = 2 -- 玉石卸下

local EFFECT_BG_RES = "moving_shuijingxiangqian_bg"       -- 背景图中 左右边上石头和底部浮动石头  (父类)
local EFFECT_BAGUA = "effect_shuijingxiangqian_bg_bagua"  -- _effectNode2八卦   (父类)
local EFFECT_TEXING = "moving_zhanma_chengse_up"          -- _effectNode3 装备成功 星星  

function EquipTrainJadeLayer:ctor(parentView)
    self._parentView = parentView

    local resource = {
        file = Path.getCSB("EquipTrainJadeLayer2", "equipment"),
        size = G_ResolutionManager:getDesignSize(),
        binding = {}
    }
    self:enableNodeEvents()  
    EquipTrainJadeLayer.super.ctor(self, resource)
end

function EquipTrainJadeLayer:onCreate()
    self:_doLayout()
    self:_initUI()
    self._recordAttr = G_UserData:getAttr():createRecordData(FunctionConst.FUNC_EQUIP_TRAIN_TYPE3)
end

function EquipTrainJadeLayer:onEnter()
    self._signalJadeEquipSuccess =
        G_SignalManager:add(SignalConst.EVENT_JADE_EQUIP_SUCCESS, handler(self, self._onEventEquipJadeSuccess))  
    self:_playBgEffect()
end

function EquipTrainJadeLayer:onExit()
    self._signalJadeEquipSuccess:remove()
    self._signalJadeEquipSuccess = nil
end

function EquipTrainJadeLayer:_doLayout()

	local contentSize = self._panelBg:getContentSize()
	self:setContentSize(contentSize)                   --  设置node节点尺寸
end


function EquipTrainJadeLayer:_playBgEffect()
    G_EffectGfxMgr:createPlayMovingGfx(
        self._parentView._effectNode1,
        EFFECT_BG_RES,
        nil,
        function()
        end
    )
end

-- message S2C_JadeEquip {
-- 	required uint32 ret = 1;
-- 	optional uint64 id = 2;
-- 	optional uint64 equipment_id = 3;
-- 	optional uint32 pos = 4;
-- }
function EquipTrainJadeLayer:_onEventEquipJadeSuccess(id, message)
    if self and self._parentView.checkRedPoint then
        self._parentView:checkRedPoint()
    end

    local id = rawget(message, "id")
    local pos = rawget(message, "pos")
    self:_updateData()
    self:_updateJadeSlot()

    local text = ""
    if id > 0 then
        text = Lang.get("jade_inject_success")
        self["_equipJadeIcon" .. (pos + 1)]:playEquipEffect()
    else
        text = Lang.get("jade_unload_success")
    end
    self:_playPrompt(text, isSuitable)
end

function EquipTrainJadeLayer:_playPrompt(text, isSuitable)
    if not self._unitData:isInBattle() then
        return
    end
    local summary = {}
    local param = {
        content = text,
        anchorPoint = cc.p(0.5, 0.5),
        --startPosition = {x = UIConst.SUMMARY_OFFSET_X_ATTR}
    }
    if #summary == 0 then
        table.insert(summary, param)
    end
    --属性飘字
    self:_addBaseAttrPromptSummary(summary)
    G_Prompt:showSummary(summary)
    --总战力
    if #summary > 0 then
        G_UserData:getAttr():recordPowerWithKey(FunctionConst.FUNC_TEAM)
        G_Prompt:playTotalPowerSummaryWithKey(FunctionConst.FUNC_TEAM, UIConst.SUMMARY_OFFSET_X_TRAIN, -5)
    end
end

--加入基础属性飘字内容
function EquipTrainJadeLayer:_addBaseAttrPromptSummary(summary)
    local TextHelper = require("app.utils.TextHelper")
    local AttrDataHelper = require("app.utils.data.AttrDataHelper")
    local attr = TextHelper.getAttrInfoBySort(self._recordAttr:getAttr())
    local attr2 = TextHelper.getAttrInfoBySort(self._recordAttr:getLastAttr())
    for i, info in ipairs(attr2) do
        if not self:_ishaveIdInAttr(info.id, attr) then
            table.insert(attr, info)
        end
    end
    local desInfo = attr
    for i, info in ipairs(desInfo) do
        local attrId = info.id
        local diffValue = self._recordAttr:getDiffValue(attrId)
        if diffValue ~= 0 then
            local param = {
                content = AttrDataHelper.getPromptContent(attrId, diffValue),
                anchorPoint = cc.p(0.5, 0.5),
               -- startPosition = {x = UIConst.SUMMARY_OFFSET_X_ATTR}
            }
            table.insert(summary, param)
        end
    end

    return summary
end

function EquipTrainJadeLayer:_ishaveIdInAttr(id, attr)
    for i, info in ipairs(attr) do
        if id == info.id then
            return true
        end
    end
    return false
end

function EquipTrainJadeLayer:_initUI()
    -- 显示背景
    local bgres = Path.getJadeImg("bg_01")
    bgres = string.gsub(bgres, "png", "jpg")
    local scene = G_SceneManager:getTopScene()    
    scene:getSceneView():changeBackground(bgres)	

    self._fileNodeDetailTitle:setFontSize(22)
    self._fileNodeDetailTitle:setTitle(Lang.get("treasure_jade_detail_title"))
    
    for index = 1, EquipConst.MAX_JADE_SLOT do
        self["_equipJadeIcon" .. index] = EquipJadeIcon.new(self["_jadeSlot" .. index], index)
    end
    --self._equipAvatar:showShadow(false)
    ccui.Helper:seekNodeByName(self._equipAvatar, "NodeEffectUp"):setVisible(false)
    ccui.Helper:seekNodeByName(self._equipAvatar, "NodeEffectDown"):setVisible(false)
    
    self._parentView._buttonShow:updateLangName("equipment_jade_help_txt") 
    self:_adjustScaleAndPos() 
end

function EquipTrainJadeLayer:_adjustScaleAndPos()
    self._parentView._nodeJade:setVisible(true)  	
    self._parentView._nodeDetail:setVisible(true)
    self._parentView._nodeDetail:getChildByName("_buttonShow"):setVisible(true)
    self._parentView._nodeDetail:getChildByName("_buttonPreview"):setVisible(false)


end

function EquipTrainJadeLayer:updateInfo()
    self:_updateData()
    self:_updateView()
    self:_updateItem()
    self:_updateJadeSlot()
end

function EquipTrainJadeLayer:_updateData()
    local equipid = G_UserData:getEquipment():getCurEquipId() -- 装备唯一id
    self._unitData = G_UserData:getEquipment():getEquipmentDataWithId(equipid)
    local EquipDataHelper = require("app.utils.data.EquipDataHelper")
    local attrInfo = EquipDataHelper.getEquipJadeAttrInfo(self._unitData, G_UserData:getBase():getLevel())
    self._recordAttr:updateData(attrInfo)
end

function EquipTrainJadeLayer:_updateView()
    local equipBaseId = self._unitData:getBase_id()
    local equipParam = TypeConvertHelper.convert(TypeConvertHelper.TYPE_EQUIPMENT, equipBaseId)

    --名字
    local equipName = equipParam.name
    local rLevel = self._unitData:getR_level()
    if rLevel > 0 then
        equipName = equipName .. "+" .. rLevel
    end
    self._nodeTitle:setName(1)

    -- local heroUnitData = UserDataHelper.getHeroDataWithEquipId(self._unitData:getId())
    -- if heroUnitData == nil then
    --     self._textFrom:setVisible(false)
    -- else
    --     local baseId = heroUnitData:getBase_id()
    --     local limitLevel = heroUnitData:getLimit_level()
    --     local limitRedLevel = heroUnitData:getLimit_rtg()
    --     self._textFrom:setVisible(true)
    --     local heroParam = TypeConvertHelper.convert(TypeConvertHelper.TYPE_HERO, baseId, nil, nil, limitLevel, limitRedLevel)
    --     self._textFrom:setString(Lang.get("treasure_detail_from", {name = heroParam.name}))
    -- end
end

function EquipTrainJadeLayer:_updateItem()
    local equipBaseId = self._unitData:getBase_id()
    self._equipAvatar:updateUI(equipBaseId)

    if EquipTrainHelper.canLimitUp(equipBaseId) then
        self._nodeSlot:setVisible(true)
        self._textTips:setVisible(false)
    else
        self._nodeSlot:setVisible(false)
        self._textTips:setVisible(true)
    end
end

function EquipTrainJadeLayer:_updateJadeSlot()
    local config = self._unitData:getConfig()
    local slotInfo = string.split(config.inlay_type, "|")
    for i = 1, #slotInfo do
        if tonumber(slotInfo[i]) == 0 then
            self["_equipJadeIcon" .. i]:lockIcon()
        else
            local suit_id = config.suit_id
            local jades = self._unitData:getJades()
            local jadeId = jades[i]
            self["_equipJadeIcon" .. i]:updateIcon(self._unitData:getId(), jadeId)
        end
    end
    self:_updateLvEffect()
end

function EquipTrainJadeLayer:_updateLvEffect()
    self._parentView._effectNode2:removeAllChildren()
    self._parentView._effectNode3:removeAllChildren()
    if self._unitData:isFullAttrJade() then
        G_EffectGfxMgr:createPlayGfx(self._parentView._effectNode2, EFFECT_BAGUA)
    end
    if self._unitData:isFullJade() then
        G_EffectGfxMgr:createPlayMovingGfx( 
            self._parentView._effectNode3,
            EFFECT_TEXING,
            nil,
            function()
            end
        )
    end
end

return EquipTrainJadeLayer

 