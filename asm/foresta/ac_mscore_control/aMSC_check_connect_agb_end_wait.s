lbl_80515EE0:
/* 80515EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515EE4  7C 08 02 A6 */	mflr r0
/* 80515EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515EF0  3B E0 FF FF */	li r31, -1
/* 80515EF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80515EF8  7C 7E 1B 78 */	mr r30, r3
/* 80515EFC  4B B3 39 01 */	bl mGcgba_ConnectEnabled
/* 80515F00  2C 03 00 09 */	cmpwi r3, 9
/* 80515F04  41 82 00 1C */	beq lbl_80515F20
/* 80515F08  40 80 00 18 */	bge lbl_80515F20
/* 80515F0C  2C 03 00 01 */	cmpwi r3, 1
/* 80515F10  41 82 00 08 */	beq lbl_80515F18
/* 80515F14  48 00 00 0C */	b lbl_80515F20
lbl_80515F18:
/* 80515F18  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 80515F1C  3B E3 00 01 */	addi r31, r3, 1
lbl_80515F20:
/* 80515F20  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 80515F24  2C 1F FF FF */	cmpwi r31, -1
/* 80515F28  38 03 00 01 */	addi r0, r3, 1
/* 80515F2C  90 1E 01 7C */	stw r0, 0x17c(r30)
/* 80515F30  41 82 00 38 */	beq lbl_80515F68
/* 80515F34  4B B3 38 89 */	bl mGcgba_InitVar
/* 80515F38  38 60 00 47 */	li r3, 0x47
/* 80515F3C  48 11 7F C9 */	bl sAdo_SysLevStart
/* 80515F40  2C 1F 00 06 */	cmpwi r31, 6
/* 80515F44  40 82 00 14 */	bne lbl_80515F58
/* 80515F48  38 60 00 10 */	li r3, 0x10
/* 80515F4C  38 80 00 20 */	li r4, 0x20
/* 80515F50  4B EA 64 D9 */	bl func_803BC428
/* 80515F54  90 7E 01 80 */	stw r3, 0x180(r30)
lbl_80515F58:
/* 80515F58  7F C3 F3 78 */	mr r3, r30
/* 80515F5C  7F E4 FB 78 */	mr r4, r31
/* 80515F60  48 00 03 89 */	bl aMSC_setupAction
/* 80515F64  48 00 00 38 */	b lbl_80515F9C
lbl_80515F68:
/* 80515F68  80 1E 01 7C */	lwz r0, 0x17c(r30)
/* 80515F6C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80515F70  40 81 00 2C */	ble lbl_80515F9C
/* 80515F74  4B EA 97 35 */	bl func_803BF6A8
/* 80515F78  38 80 3D DF */	li r4, 0x3ddf
/* 80515F7C  7C 7F 1B 78 */	mr r31, r3
/* 80515F80  4B EA A0 45 */	bl mMsg_Set_continue_msg_num
/* 80515F84  7F E3 FB 78 */	mr r3, r31
/* 80515F88  4B EA AD C5 */	bl mMsg_Unset_LockContinue
/* 80515F8C  4B B3 38 61 */	bl mGcgba_EndComm
/* 80515F90  7F C3 F3 78 */	mr r3, r30
/* 80515F94  38 80 00 0C */	li r4, 0xc
/* 80515F98  48 00 03 51 */	bl aMSC_setupAction
lbl_80515F9C:
/* 80515F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80515FA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80515FA8  7C 08 03 A6 */	mtlr r0
/* 80515FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80515FB0  4E 80 00 20 */	blr 
