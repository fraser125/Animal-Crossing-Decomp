lbl_80555EB4:
/* 80555EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555EB8  7C 08 02 A6 */	mflr r0
/* 80555EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555EC4  7C 9F 23 78 */	mr r31, r4
/* 80555EC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80555ECC  7C 7E 1B 78 */	mr r30, r3
/* 80555ED0  7F C4 F3 78 */	mr r4, r30
/* 80555ED4  38 60 00 08 */	li r3, 8
/* 80555ED8  4B E4 43 8D */	bl mDemo_Check
/* 80555EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80555EE0  40 82 00 18 */	bne lbl_80555EF8
/* 80555EE4  7F C3 F3 78 */	mr r3, r30
/* 80555EE8  7F E4 FB 78 */	mr r4, r31
/* 80555EEC  38 A0 00 15 */	li r5, 0x15
/* 80555EF0  48 00 06 2D */	bl aNG2_setupAction
/* 80555EF4  48 00 00 38 */	b lbl_80555F2C
lbl_80555EF8:
/* 80555EF8  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80555EFC  2C 00 00 01 */	cmpwi r0, 1
/* 80555F00  40 82 00 2C */	bne lbl_80555F2C
/* 80555F04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80555F08  7F C3 F3 78 */	mr r3, r30
/* 80555F0C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80555F10  38 80 00 3E */	li r4, 0x3e
/* 80555F14  3C C5 00 02 */	addis r6, r5, 2
/* 80555F18  38 A0 00 01 */	li r5, 1
/* 80555F1C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80555F20  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80555F24  7D 89 03 A6 */	mtctr r12
/* 80555F28  4E 80 04 21 */	bctrl 
lbl_80555F2C:
/* 80555F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555F34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555F38  7C 08 03 A6 */	mtlr r0
/* 80555F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80555F40  4E 80 00 20 */	blr 
