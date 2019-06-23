-------------------------------------------------------------------------------
-- Name=Template - Dark .lua Script Template
-- Author=Darkstrumn
-- Description=
-- Version=0.0.2 - 140830.14:: added more aliases
-- License=Creative Commons Attribution-Non-Commercial-Share Alike 3.0
-- Details=The template is the basis of all other scripts.
-- ============================================================================
-- == Example of Calling Measure
-- ============================================================================
-- ;------------------------------------------------------------------------------
-- [mLuaScriptTemplate]
-- Measure=Script
-- ScriptFile="#INCLUDES.LUASCRIPTS#Template.lua"
-- ;-- configs:
-- LuaOptionName=315
-- ;(OPTIONAL)MeasureAlias=#MEASURE.MeasureAlias#
-- ;(OPTIONAL)MeterAlias=#METERS.MeterAlias#
-- ;(optional)ListBaseName=Argument;<<--override name of argument list (symantic)
-- ;(optional)ArgumentListLength=2;<<--override and limit the active arguments
-- Argument1="MeasureString|mTopProcess"
-- Argument2="String|Hello World"
-- Argument3="MeasureFloat|mProcessCount"
-- Argument4="Float|100"
-- Argument5="Variable|vProcessStatsOffset0X"
-- Argument6="Uknown|mTopProcess6"
-- Argument7="Formula|2+2"
-- UpdateDivider=-1
-- DynamicVariables=1
-- ;------------------------------------------------------------------------------
-- ============================================================================
-------------------------------------------------------------------------------
-- Initialize: we define some aliases here for often used items, mostly bang commands and the like.
-------------------------------------------------------------------------------
--MeterBaseName x-pos,y-pos,aangle,MeasureName,low-usage%,med-usage%,high-usage%,low-colour%,med-colour%,high-colour% ...
--MeterBaseName=CPU0
--Meter0=0|0|43|mCPU01|50|75|90|vGreenA160|vYellowA160|vRed160
--Meter1=10|10|47|mCPU02|50|75|90|vGreenA160|vYellowA160|vRed160
--
function Initialize()
  This = SELF:GetName()
	intState=0
	intMaxStateBoundry=5
	-- Options
	bSO = '!SetOption'
	bGO = '!GetOption'
	bSOG = '!SetOptionGroup'
	-- Variables
	bSV = '!SetVariable'
	bWKV = '!WriteKeyValue'
	-- Skins\\Configs
	bAC = '!ActivateConfig'
	bDC = '!DeactivateConfig'
	-- General Skin Actions (GSA)
	bUD = '!Update'
	bRF = '!Refresh'
	bRD = '!Redraw'
	--Measure
	bUMS = '!UpdateMeasure'
	bUMSG = '!UpdateMeasureGroup'
	bCM = '!CommandMeasure'
	-- Meter
	bSM = '!ShowMeter'
	bHM = '!HideMeter'
	bTM = '!ToggleMeter'
	bMM = '!MoveMeter'
	bUMT = '!UpdateMeter'
	bHMG = '!HideMeterGroup'
	bTMG = '!ToggleMeterGroup'
	bUMTG = '!UpdateMeterGroup'
	--Logs
	bL = '!Log'
	--Read Lua option config\\var data
	NumMonitoredProcs=tonumber(SKIN:GetVariable('NumMonitoredProcs', '0'))
	vCommand = SELF:GetOption('Command', 'Len')
	vLoopSize = SELF:GetOption(vMpBaseName..'ListLength', 255)--(Optional override)
	if (vLoopSize == -1) then vLoopSize = 255 end
DebugPrint('vCommand:'..vCommand,'Notice')
	for vIndex = 1,vLoopSize do--allow for override or auto-detect,load arguments
		vMN = SELF:GetOption(vMpBaseName..vIndex, 'NULL')
		if vMN == 'NULL' then --detection of end of list
		 break
		end
		mMP['state'][vIndex] = 0
	end--</for>
--
end --</Initialize()>
-------------------------------------------------------------------------------
-- Update: Here we tie-in to the update event and do our work every "cycle"
-------------------------------------------------------------------------------
function Update()
--DebugPrint('Process:'..ret,'Warning')
	return (ret)
end --</Update()>
-------------------------------------------------------------------------------
--/**
-- * provide debug logging functions
-- */
function DebugPrint(strMsg,strErrorLevel)
  strHeader=vLogHeader..': '
  strMessage=strHeader..strMsg
  strEL='Debug' --default
  --
  if(strErrorLevel) then
    strEL=strErrorLevel
  end--</if>
  SKIN:Bang(bL,strMessage,strEL)
end--</DebugPrint()>
-------------------------------------------------------------------------------
-- End of line.
-------------------------------------------------------------------------------
