lbl_80563C34:
/* 80563C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563C38  7C 08 02 A6 */	mflr r0
/* 80563C3C  38 80 00 09 */	li r4, 9
/* 80563C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563C48  93 C1 00 08 */	stw r30, 8(r1)
/* 80563C4C  7C 7E 1B 78 */	mr r30, r3
/* 80563C50  38 60 00 04 */	li r3, 4
/* 80563C54  4B E3 48 29 */	bl mDemo_Get_OrderValue
/* 80563C58  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563C5C  4B E5 BA 4D */	bl func_803BF6A8
/* 80563C60  2C 1F 00 00 */	cmpwi r31, 0
/* 80563C64  7C 7F 1B 78 */	mr r31, r3
/* 80563C68  41 82 00 3C */	beq lbl_80563CA4
/* 80563C6C  4B E5 D0 2D */	bl mMsg_Check_MainNormalContinue
/* 80563C70  2C 03 00 01 */	cmpwi r3, 1
/* 80563C74  40 82 00 30 */	bne lbl_80563CA4
/* 80563C78  38 60 00 04 */	li r3, 4
/* 80563C7C  38 80 00 09 */	li r4, 9
/* 80563C80  38 A0 00 00 */	li r5, 0
/* 80563C84  4B E3 47 B5 */	bl mDemo_Set_OrderValue
/* 80563C88  38 60 00 47 */	li r3, 0x47
/* 80563C8C  48 0C A2 79 */	bl sAdo_SysLevStart
/* 80563C90  7F E3 FB 78 */	mr r3, r31
/* 80563C94  4B E5 D0 AD */	bl mMsg_Set_LockContinue
/* 80563C98  7F C3 F3 78 */	mr r3, r30
/* 80563C9C  48 00 08 01 */	bl aNNW_change_talk_proc_next
/* 80563CA0  4B FF D4 9D */	bl func_8056113C
lbl_80563CA4:
/* 80563CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563CB0  7C 08 03 A6 */	mtlr r0
/* 80563CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80563CB8  4E 80 00 20 */	blr 
