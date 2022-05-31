lbl_805DC1C8:
/* 805DC1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC1CC  7C 08 02 A6 */	mflr r0
/* 805DC1D0  38 80 00 07 */	li r4, 7
/* 805DC1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC1DC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DC1E0  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 805DC1E4  3B E3 03 24 */	addi r31, r3, 0x324
/* 805DC1E8  7F E3 FB 78 */	mr r3, r31
/* 805DC1EC  7D 89 03 A6 */	mtctr r12
/* 805DC1F0  4E 80 04 21 */	bctrl 
/* 805DC1F4  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805DC1F8  2C 00 00 04 */	cmpwi r0, 4
/* 805DC1FC  41 82 00 14 */	beq lbl_805DC210
/* 805DC200  2C 00 00 03 */	cmpwi r0, 3
/* 805DC204  41 82 00 0C */	beq lbl_805DC210
/* 805DC208  2C 00 00 01 */	cmpwi r0, 1
/* 805DC20C  40 82 00 0C */	bne lbl_805DC218
lbl_805DC210:
/* 805DC210  38 60 00 59 */	li r3, 0x59
/* 805DC214  48 05 1A F1 */	bl sAdo_SysTrgStart
lbl_805DC218:
/* 805DC218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC21C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC220  7C 08 03 A6 */	mtlr r0
/* 805DC224  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC228  4E 80 00 20 */	blr 
