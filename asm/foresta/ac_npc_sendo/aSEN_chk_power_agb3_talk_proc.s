lbl_80575CE0:
/* 80575CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575CE4  7C 08 02 A6 */	mflr r0
/* 80575CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575CF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80575CF4  7C 7E 1B 78 */	mr r30, r3
/* 80575CF8  4B AD 3B 05 */	bl mGcgba_ConnectEnabled
/* 80575CFC  2C 03 00 09 */	cmpwi r3, 9
/* 80575D00  41 82 00 A0 */	beq lbl_80575DA0
/* 80575D04  40 80 00 40 */	bge lbl_80575D44
/* 80575D08  2C 03 00 01 */	cmpwi r3, 1
/* 80575D0C  41 82 00 08 */	beq lbl_80575D14
/* 80575D10  48 00 00 34 */	b lbl_80575D44
lbl_80575D14:
/* 80575D14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575D18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80575D1C  3C 63 00 02 */	addis r3, r3, 2
/* 80575D20  7C 64 1B 78 */	mr r4, r3
/* 80575D24  38 84 61 20 */	addi r4, r4, 0x6120
/* 80575D28  38 63 3E 0A */	addi r3, r3, 0x3e0a
/* 80575D2C  4B E9 15 09 */	bl lbRTC_TimeCopy
/* 80575D30  4B AD 3A 8D */	bl mGcgba_InitVar
/* 80575D34  7F C3 F3 78 */	mr r3, r30
/* 80575D38  38 80 00 1A */	li r4, 0x1a
/* 80575D3C  48 00 02 31 */	bl aSEN_change_talk_proc
/* 80575D40  48 00 00 60 */	b lbl_80575DA0
lbl_80575D44:
/* 80575D44  80 7E 09 AC */	lwz r3, 0x9ac(r30)
/* 80575D48  38 03 00 01 */	addi r0, r3, 1
/* 80575D4C  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80575D50  80 1E 09 AC */	lwz r0, 0x9ac(r30)
/* 80575D54  2C 00 00 05 */	cmpwi r0, 5
/* 80575D58  41 80 00 44 */	blt lbl_80575D9C
/* 80575D5C  4B E4 99 4D */	bl func_803BF6A8
/* 80575D60  7C 7F 1B 78 */	mr r31, r3
/* 80575D64  4B E4 AF E9 */	bl mMsg_Unset_LockContinue
/* 80575D68  7F C3 F3 78 */	mr r3, r30
/* 80575D6C  38 80 30 85 */	li r4, 0x3085
/* 80575D70  4B FF EB 25 */	bl aSEN_get_msg_no
/* 80575D74  7C 64 1B 78 */	mr r4, r3
/* 80575D78  7F E3 FB 78 */	mr r3, r31
/* 80575D7C  4B E4 AC 1D */	bl mMsg_ChangeMsgData
/* 80575D80  7F E3 FB 78 */	mr r3, r31
/* 80575D84  4B E4 AF A5 */	bl mMsg_Set_ForceNext
/* 80575D88  4B AD 3A 65 */	bl mGcgba_EndComm
/* 80575D8C  7F C3 F3 78 */	mr r3, r30
/* 80575D90  38 80 00 00 */	li r4, 0
/* 80575D94  48 00 01 D9 */	bl aSEN_change_talk_proc
/* 80575D98  48 00 00 08 */	b lbl_80575DA0
lbl_80575D9C:
/* 80575D9C  4B AD 3A 21 */	bl mGcgba_InitVar
lbl_80575DA0:
/* 80575DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575DA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575DAC  7C 08 03 A6 */	mtlr r0
/* 80575DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80575DB4  4E 80 00 20 */	blr 
