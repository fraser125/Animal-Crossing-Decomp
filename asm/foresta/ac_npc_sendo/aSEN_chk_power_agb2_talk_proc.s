lbl_805759A4:
/* 805759A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805759A8  7C 08 02 A6 */	mflr r0
/* 805759AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805759B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805759B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805759B8  7C 7E 1B 78 */	mr r30, r3
/* 805759BC  4B AD 3E 41 */	bl mGcgba_ConnectEnabled
/* 805759C0  2C 03 00 09 */	cmpwi r3, 9
/* 805759C4  41 82 00 A0 */	beq lbl_80575A64
/* 805759C8  40 80 00 40 */	bge lbl_80575A08
/* 805759CC  2C 03 00 01 */	cmpwi r3, 1
/* 805759D0  41 82 00 08 */	beq lbl_805759D8
/* 805759D4  48 00 00 34 */	b lbl_80575A08
lbl_805759D8:
/* 805759D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805759DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805759E0  3C 63 00 02 */	addis r3, r3, 2
/* 805759E4  7C 64 1B 78 */	mr r4, r3
/* 805759E8  38 84 61 20 */	addi r4, r4, 0x6120
/* 805759EC  38 63 3E 0A */	addi r3, r3, 0x3e0a
/* 805759F0  4B E9 18 45 */	bl lbRTC_TimeCopy
/* 805759F4  4B AD 3D C9 */	bl mGcgba_InitVar
/* 805759F8  7F C3 F3 78 */	mr r3, r30
/* 805759FC  38 80 00 17 */	li r4, 0x17
/* 80575A00  48 00 05 6D */	bl aSEN_change_talk_proc
/* 80575A04  48 00 00 60 */	b lbl_80575A64
lbl_80575A08:
/* 80575A08  80 7E 09 AC */	lwz r3, 0x9ac(r30)
/* 80575A0C  38 03 00 01 */	addi r0, r3, 1
/* 80575A10  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80575A14  80 1E 09 AC */	lwz r0, 0x9ac(r30)
/* 80575A18  2C 00 00 05 */	cmpwi r0, 5
/* 80575A1C  41 80 00 44 */	blt lbl_80575A60
/* 80575A20  4B E4 9C 89 */	bl func_803BF6A8
/* 80575A24  7C 7F 1B 78 */	mr r31, r3
/* 80575A28  4B E4 B3 25 */	bl mMsg_Unset_LockContinue
/* 80575A2C  7F C3 F3 78 */	mr r3, r30
/* 80575A30  38 80 30 89 */	li r4, 0x3089
/* 80575A34  4B FF EE 61 */	bl aSEN_get_msg_no
/* 80575A38  7C 64 1B 78 */	mr r4, r3
/* 80575A3C  7F E3 FB 78 */	mr r3, r31
/* 80575A40  4B E4 AF 59 */	bl mMsg_ChangeMsgData
/* 80575A44  7F E3 FB 78 */	mr r3, r31
/* 80575A48  4B E4 B2 E1 */	bl mMsg_Set_ForceNext
/* 80575A4C  4B AD 3D A1 */	bl mGcgba_EndComm
/* 80575A50  7F C3 F3 78 */	mr r3, r30
/* 80575A54  38 80 00 16 */	li r4, 0x16
/* 80575A58  48 00 05 15 */	bl aSEN_change_talk_proc
/* 80575A5C  48 00 00 08 */	b lbl_80575A64
lbl_80575A60:
/* 80575A60  4B AD 3D 5D */	bl mGcgba_InitVar
lbl_80575A64:
/* 80575A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575A6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575A70  7C 08 03 A6 */	mtlr r0
/* 80575A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80575A78  4E 80 00 20 */	blr 
