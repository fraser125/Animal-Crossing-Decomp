lbl_8053D474:
/* 8053D474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D478  7C 08 02 A6 */	mflr r0
/* 8053D47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D484  7C 7F 1B 78 */	mr r31, r3
/* 8053D488  38 60 00 08 */	li r3, 8
/* 8053D48C  93 C1 00 08 */	stw r30, 8(r1)
/* 8053D490  7C 9E 23 78 */	mr r30, r4
/* 8053D494  7F E4 FB 78 */	mr r4, r31
/* 8053D498  4B E5 CD CD */	bl mDemo_Check
/* 8053D49C  2C 03 00 01 */	cmpwi r3, 1
/* 8053D4A0  41 82 00 2C */	beq lbl_8053D4CC
/* 8053D4A4  7F E4 FB 78 */	mr r4, r31
/* 8053D4A8  38 60 00 0A */	li r3, 0xa
/* 8053D4AC  4B E5 CD B9 */	bl mDemo_Check
/* 8053D4B0  2C 03 00 01 */	cmpwi r3, 1
/* 8053D4B4  41 82 00 18 */	beq lbl_8053D4CC
/* 8053D4B8  7F E4 FB 78 */	mr r4, r31
/* 8053D4BC  38 60 00 07 */	li r3, 7
/* 8053D4C0  4B E5 CD A5 */	bl mDemo_Check
/* 8053D4C4  2C 03 00 01 */	cmpwi r3, 1
/* 8053D4C8  40 82 00 20 */	bne lbl_8053D4E8
lbl_8053D4CC:
/* 8053D4CC  4B E5 CF 45 */	bl mDemo_Check_ListenAble
/* 8053D4D0  2C 03 00 00 */	cmpwi r3, 0
/* 8053D4D4  40 82 00 14 */	bne lbl_8053D4E8
/* 8053D4D8  7F E3 FB 78 */	mr r3, r31
/* 8053D4DC  7F C4 F3 78 */	mr r4, r30
/* 8053D4E0  4B FF FE 15 */	bl aNPC_setup_talk_start
/* 8053D4E4  48 00 00 4C */	b lbl_8053D530
lbl_8053D4E8:
/* 8053D4E8  80 1E 1D F8 */	lwz r0, 0x1df8(r30)
/* 8053D4EC  2C 00 00 00 */	cmpwi r0, 0
/* 8053D4F0  40 82 00 40 */	bne lbl_8053D530
/* 8053D4F4  80 1E 1E 0C */	lwz r0, 0x1e0c(r30)
/* 8053D4F8  2C 00 00 00 */	cmpwi r0, 0
/* 8053D4FC  40 82 00 34 */	bne lbl_8053D530
/* 8053D500  81 9F 09 64 */	lwz r12, 0x964(r31)
/* 8053D504  28 0C 00 00 */	cmplwi r12, 0
/* 8053D508  41 82 00 18 */	beq lbl_8053D520
/* 8053D50C  7F E3 FB 78 */	mr r3, r31
/* 8053D510  7F C4 F3 78 */	mr r4, r30
/* 8053D514  7D 89 03 A6 */	mtctr r12
/* 8053D518  4E 80 04 21 */	bctrl 
/* 8053D51C  48 00 00 14 */	b lbl_8053D530
lbl_8053D520:
/* 8053D520  7F E4 FB 78 */	mr r4, r31
/* 8053D524  38 60 00 07 */	li r3, 7
/* 8053D528  38 A0 00 00 */	li r5, 0
/* 8053D52C  4B E5 CC 31 */	bl mDemo_Request
lbl_8053D530:
/* 8053D530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D538  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053D53C  7C 08 03 A6 */	mtlr r0
/* 8053D540  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D544  4E 80 00 20 */	blr 
