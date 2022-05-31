lbl_805192DC:
/* 805192DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805192E0  7C 08 02 A6 */	mflr r0
/* 805192E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805192E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805192EC  4B B8 1B E9 */	bl func_8009AED4
/* 805192F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805192F4  7C 7D 1B 78 */	mr r29, r3
/* 805192F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805192FC  7C 9E 23 78 */	mr r30, r4
/* 80519300  3F E5 00 02 */	addis r31, r5, 2
/* 80519304  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80519308  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051930C  7D 89 03 A6 */	mtctr r12
/* 80519310  4E 80 04 21 */	bctrl 
/* 80519314  2C 03 00 01 */	cmpwi r3, 1
/* 80519318  40 82 00 30 */	bne lbl_80519348
/* 8051931C  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80519320  3C 60 80 6A */	lis r3, ct_data@ha /* 0x8069FFA4@ha */
/* 80519324  38 A3 FF A4 */	addi r5, r3, ct_data@l /* 0x8069FFA4@l */
/* 80519328  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8051932C  7F A3 EB 78 */	mr r3, r29
/* 80519330  7F C4 F3 78 */	mr r4, r30
/* 80519334  7D 89 03 A6 */	mtctr r12
/* 80519338  4E 80 04 21 */	bctrl 
/* 8051933C  3C 60 80 52 */	lis r3, aEART_setupAction@ha /* 0x80519AD4@ha */
/* 80519340  38 03 9A D4 */	addi r0, r3, aEART_setupAction@l /* 0x80519AD4@l */
/* 80519344  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80519348:
/* 80519348  39 61 00 20 */	addi r11, r1, 0x20
/* 8051934C  4B B8 1B D5 */	bl func_8009AF20
/* 80519350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80519354  7C 08 03 A6 */	mtlr r0
/* 80519358  38 21 00 20 */	addi r1, r1, 0x20
/* 8051935C  4E 80 00 20 */	blr 
