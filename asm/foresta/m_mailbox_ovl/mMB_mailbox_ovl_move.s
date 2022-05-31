lbl_805E5754:
/* 805E5754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E5758  7C 08 02 A6 */	mflr r0
/* 805E575C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E5760  39 61 00 20 */	addi r11, r1, 0x20
/* 805E5764  4B AB 57 71 */	bl func_8009AED4
/* 805E5768  7C 7D 1B 78 */	mr r29, r3
/* 805E576C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E5770  3B DF 03 6C */	addi r30, r31, 0x36c
/* 805E5774  81 9F 03 78 */	lwz r12, 0x378(r31)
/* 805E5778  7D 89 03 A6 */	mtctr r12
/* 805E577C  4E 80 04 21 */	bctrl 
/* 805E5780  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E5784  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CD8A8@ha */
/* 805E5788  38 A3 D8 A8 */	addi r5, r3, ovl_move_proc@l /* 0x806CD8A8@l */
/* 805E578C  7F A3 EB 78 */	mr r3, r29
/* 805E5790  54 00 10 3A */	slwi r0, r0, 2
/* 805E5794  7F C4 F3 78 */	mr r4, r30
/* 805E5798  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E579C  7D 89 03 A6 */	mtctr r12
/* 805E57A0  4E 80 04 21 */	bctrl 
/* 805E57A4  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E57A8  2C 00 00 01 */	cmpwi r0, 1
/* 805E57AC  41 82 00 14 */	beq lbl_805E57C0
/* 805E57B0  40 80 00 24 */	bge lbl_805E57D4
/* 805E57B4  2C 00 00 00 */	cmpwi r0, 0
/* 805E57B8  40 80 00 14 */	bge lbl_805E57CC
/* 805E57BC  48 00 00 18 */	b lbl_805E57D4
lbl_805E57C0:
/* 805E57C0  38 00 00 01 */	li r0, 1
/* 805E57C4  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 805E57C8  48 00 00 0C */	b lbl_805E57D4
lbl_805E57CC:
/* 805E57CC  38 00 00 00 */	li r0, 0
/* 805E57D0  90 1F 09 3C */	stw r0, 0x93c(r31)
lbl_805E57D4:
/* 805E57D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E57D8  4B AB 57 49 */	bl func_8009AF20
/* 805E57DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E57E0  7C 08 03 A6 */	mtlr r0
/* 805E57E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805E57E8  4E 80 00 20 */	blr 
