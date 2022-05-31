lbl_80515E4C:
/* 80515E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515E50  7C 08 02 A6 */	mflr r0
/* 80515E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80515E60  7C 7E 1B 78 */	mr r30, r3
/* 80515E64  4B EA 98 45 */	bl func_803BF6A8
/* 80515E68  7C 60 1B 78 */	mr r0, r3
/* 80515E6C  38 60 00 04 */	li r3, 4
/* 80515E70  7C 1F 03 78 */	mr r31, r0
/* 80515E74  38 80 00 09 */	li r4, 9
/* 80515E78  4B E8 26 05 */	bl mDemo_Get_OrderValue
/* 80515E7C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80515E80  41 82 00 48 */	beq lbl_80515EC8
/* 80515E84  7F E3 FB 78 */	mr r3, r31
/* 80515E88  4B EA AE 11 */	bl mMsg_Check_MainNormalContinue
/* 80515E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80515E90  41 82 00 38 */	beq lbl_80515EC8
/* 80515E94  4B B3 39 29 */	bl mGcgba_InitVar
/* 80515E98  38 00 00 00 */	li r0, 0
/* 80515E9C  38 60 00 04 */	li r3, 4
/* 80515EA0  90 1E 01 7C */	stw r0, 0x17c(r30)
/* 80515EA4  38 80 00 09 */	li r4, 9
/* 80515EA8  38 A0 00 00 */	li r5, 0
/* 80515EAC  4B E8 25 8D */	bl mDemo_Set_OrderValue
/* 80515EB0  7F E3 FB 78 */	mr r3, r31
/* 80515EB4  4B EA AE 8D */	bl mMsg_Set_LockContinue
/* 80515EB8  80 9E 01 78 */	lwz r4, 0x178(r30)
/* 80515EBC  7F C3 F3 78 */	mr r3, r30
/* 80515EC0  38 84 00 01 */	addi r4, r4, 1
/* 80515EC4  48 00 04 25 */	bl aMSC_setupAction
lbl_80515EC8:
/* 80515EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80515ED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80515ED4  7C 08 03 A6 */	mtlr r0
/* 80515ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80515EDC  4E 80 00 20 */	blr 
