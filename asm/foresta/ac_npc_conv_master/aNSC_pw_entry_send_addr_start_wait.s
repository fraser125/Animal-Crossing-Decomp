lbl_805498DC:
/* 805498DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805498E0  7C 08 02 A6 */	mflr r0
/* 805498E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805498E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805498EC  7C 9F 23 78 */	mr r31, r4
/* 805498F0  38 80 00 09 */	li r4, 9
/* 805498F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805498F8  7C 7E 1B 78 */	mr r30, r3
/* 805498FC  38 60 00 04 */	li r3, 4
/* 80549900  4B E4 EB 7D */	bl mDemo_Get_OrderValue
/* 80549904  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80549908  41 82 00 34 */	beq lbl_8054993C
/* 8054990C  4B E7 5D 9D */	bl func_803BF6A8
/* 80549910  4B E7 73 89 */	bl mMsg_Check_MainNormalContinue
/* 80549914  2C 03 00 01 */	cmpwi r3, 1
/* 80549918  40 82 00 24 */	bne lbl_8054993C
/* 8054991C  38 60 00 04 */	li r3, 4
/* 80549920  38 80 00 09 */	li r4, 9
/* 80549924  38 A0 00 00 */	li r5, 0
/* 80549928  4B E4 EB 11 */	bl mDemo_Set_OrderValue
/* 8054992C  7F C3 F3 78 */	mr r3, r30
/* 80549930  7F E4 FB 78 */	mr r4, r31
/* 80549934  38 A0 00 2A */	li r5, 0x2a
/* 80549938  48 00 15 E5 */	bl aNSC_setupAction
lbl_8054993C:
/* 8054993C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80549940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80549944  83 C1 00 08 */	lwz r30, 8(r1)
/* 80549948  7C 08 03 A6 */	mtlr r0
/* 8054994C  38 21 00 10 */	addi r1, r1, 0x10
/* 80549950  4E 80 00 20 */	blr 