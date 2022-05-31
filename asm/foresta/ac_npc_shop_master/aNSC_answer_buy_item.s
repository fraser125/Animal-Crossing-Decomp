lbl_80579E5C:
/* 80579E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579E60  7C 08 02 A6 */	mflr r0
/* 80579E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579E6C  7C 9F 23 78 */	mr r31, r4
/* 80579E70  38 80 00 09 */	li r4, 9
/* 80579E74  93 C1 00 08 */	stw r30, 8(r1)
/* 80579E78  7C 7E 1B 78 */	mr r30, r3
/* 80579E7C  38 60 00 04 */	li r3, 4
/* 80579E80  4B E1 E5 FD */	bl mDemo_Get_OrderValue
/* 80579E84  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80579E88  41 82 00 38 */	beq lbl_80579EC0
/* 80579E8C  4B E4 58 1D */	bl func_803BF6A8
/* 80579E90  4B E4 6E 09 */	bl mMsg_Check_MainNormalContinue
/* 80579E94  2C 03 00 00 */	cmpwi r3, 0
/* 80579E98  41 82 00 28 */	beq lbl_80579EC0
/* 80579E9C  38 60 00 04 */	li r3, 4
/* 80579EA0  38 80 00 09 */	li r4, 9
/* 80579EA4  38 A0 00 00 */	li r5, 0
/* 80579EA8  4B E1 E5 91 */	bl mDemo_Set_OrderValue
/* 80579EAC  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 80579EB0  7F C3 F3 78 */	mr r3, r30
/* 80579EB4  7F E4 FB 78 */	mr r4, r31
/* 80579EB8  38 A5 00 01 */	addi r5, r5, 1
/* 80579EBC  48 00 25 F9 */	bl aNSC_setupAction
lbl_80579EC0:
/* 80579EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579EC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80579ECC  7C 08 03 A6 */	mtlr r0
/* 80579ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80579ED4  4E 80 00 20 */	blr 
