;------------------------------------------------------------------------------
[Metadata]
Name=NameOfInclude
Author=Darkstrumn
Information=Shown in Rainmeter::Inlcude to provide...
Version=0.0.1
License=Creative Commons Attribution-Non-Commercial-Share Alike 3.0
;==================================================================
; meta-meta data
;==================================================================
Description=More detailed description of Information above
Instructions=
Config=
Tags=
Variant=
Preview=
;[/Metadata]
;------------------------------------------------------------------------------
[Rainmeter]
; alter or remove the following as needed
Update=500
BackgroundMode=1
SolidColor=0,0,0,1
;------------------------------------------------------------------------------
; copy paste block below and remove first comment to activate, update the formula
; values proper for the 2 hook values and should be good to go!
;------------------------------------------------------------------------------
;@Include="#SKINSPATH#\HiveControl\DarkIncludes\Dark-NameOfInclude.inc"
;; hook into plug-in-style include attaching known section measures to colourizing
;; feature
;;------------------------------------------------------------------------------
;[OnloadIncludeName]
;Measure=Calc
;Formula=#OnLoadStateIncludeName#
;MinValue=0
;MaxValue=100
;IfEqualValue=0
;;Dynamic values
;IfEqualAction=[!SetVariable OnLoadStateIncludeName 1][!SetOption MeasureHookHookName Formula "[*MeasureUsedDrive*]"]
;IfEqualAction=[!SetVariable OnLoadStateIncludeName 1][!SetOption MeasureHookHookName Formula "#*MeasureUsedDrive*#"]
;;Static values
;IfEqualAction=[!SetVariable OnLoadStateIncludeName 1][!SetOption MeasureHookHookName Formula "[MeasureUsedDrive]"]
;IfEqualAction=[!SetVariable OnLoadStateIncludeName 1][!SetOption MeasureHookHookName Formula "#MeasureUsedDrive#"]
;DynamicVariables=1
;------------------------------------------------------------------------------
[Variables]
GVARFILE=#@#Variables.inc
LVARFILE=#CURRENTPATH#Resources\Variables.inc
OnLoadStateIncludeName=0
;------------------------------------------------------------------------------
; Plugin-Hooks, set these to the items to be measured
; ie:[!SetOption MeasureHookHookName Formula "[*MeasureUsedDrive*]"]
;------------------------------------------------------------------------------
[MeasureHookHookName]
Measure=Calc
Formula=MeasureHookHookName
MinValue=0
MaxValue=100
DynamicVariables=1
;------------------------------------------------------------------------------
; Main logic of Include HERE
;------------------------------------------------------------------------------





