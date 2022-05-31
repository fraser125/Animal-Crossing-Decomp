lbl_80524E6C:
/* 80524E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80524E70  7C 08 02 A6 */	mflr r0
/* 80524E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80524E78  39 61 00 20 */	addi r11, r1, 0x20
/* 80524E7C  4B B7 60 59 */	bl func_8009AED4
/* 80524E80  88 03 09 AB */	lbz r0, 0x9ab(r3)
/* 80524E84  3C A0 80 6A */	lis r5, proc@ha /* 0x806A0CC8@ha */
/* 80524E88  38 A5 0C C8 */	addi r5, r5, proc@l /* 0x806A0CC8@l */
/* 80524E8C  7C 7F 1B 78 */	mr r31, r3
/* 80524E90  54 00 10 3A */	slwi r0, r0, 2
/* 80524E94  7C 9E 23 78 */	mr r30, r4
/* 80524E98  7D 85 00 2E */	lwzx r12, r5, r0
/* 80524E9C  3B A0 00 00 */	li r29, 0
/* 80524EA0  7D 89 03 A6 */	mtctr r12
/* 80524EA4  4E 80 04 21 */	bctrl 
/* 80524EA8  7F E4 FB 78 */	mr r4, r31
/* 80524EAC  38 60 00 08 */	li r3, 8
/* 80524EB0  4B E7 53 B5 */	bl mDemo_Check
/* 80524EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80524EB8  40 82 00 44 */	bne lbl_80524EFC
/* 80524EBC  7F E4 FB 78 */	mr r4, r31
/* 80524EC0  38 60 00 07 */	li r3, 7
/* 80524EC4  4B E7 53 A1 */	bl mDemo_Check
/* 80524EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80524ECC  40 82 00 30 */	bne lbl_80524EFC
/* 80524ED0  88 BF 09 A9 */	lbz r5, 0x9a9(r31)
/* 80524ED4  7F E3 FB 78 */	mr r3, r31
/* 80524ED8  7F C4 F3 78 */	mr r4, r30
/* 80524EDC  48 00 06 F9 */	bl aES2_setup_think_proc
/* 80524EE0  88 1F 09 AD */	lbz r0, 0x9ad(r31)
/* 80524EE4  28 00 00 00 */	cmplwi r0, 0
/* 80524EE8  41 82 00 10 */	beq lbl_80524EF8
/* 80524EEC  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 80524EF0  38 00 00 00 */	li r0, 0
/* 80524EF4  98 1F 09 AD */	stb r0, 0x9ad(r31)
lbl_80524EF8:
/* 80524EF8  3B A0 00 01 */	li r29, 1
lbl_80524EFC:
/* 80524EFC  7F A3 EB 78 */	mr r3, r29
/* 80524F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80524F04  4B B7 60 1D */	bl func_8009AF20
/* 80524F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80524F0C  7C 08 03 A6 */	mtlr r0
/* 80524F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80524F14  4E 80 00 20 */	blr 
