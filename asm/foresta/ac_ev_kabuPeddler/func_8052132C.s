lbl_8052132C:
/* 8052132C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80521330  7C 08 02 A6 */	mflr r0
/* 80521334  90 01 00 24 */	stw r0, 0x24(r1)
/* 80521338  39 61 00 20 */	addi r11, r1, 0x20
/* 8052133C  4B B7 9B 99 */	bl func_8009AED4
/* 80521340  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80521344  7C 7D 1B 78 */	mr r29, r3
/* 80521348  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052134C  7C 9E 23 78 */	mr r30, r4
/* 80521350  3F E5 00 02 */	addis r31, r5, 2
/* 80521354  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80521358  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8052135C  7D 89 03 A6 */	mtctr r12
/* 80521360  4E 80 04 21 */	bctrl 
/* 80521364  2C 03 00 01 */	cmpwi r3, 1
/* 80521368  40 82 00 30 */	bne lbl_80521398
/* 8052136C  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80521370  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A091C@ha */
/* 80521374  38 A3 09 1C */	addi r5, r3, ct_data@l /* 0x806A091C@l */
/* 80521378  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8052137C  7F A3 EB 78 */	mr r3, r29
/* 80521380  7F C4 F3 78 */	mr r4, r30
/* 80521384  7D 89 03 A6 */	mtctr r12
/* 80521388  4E 80 04 21 */	bctrl 
/* 8052138C  3C 60 80 52 */	lis r3, aEKPD_setupAction@ha /* 0x80521A8C@ha */
/* 80521390  38 03 1A 8C */	addi r0, r3, aEKPD_setupAction@l /* 0x80521A8C@l */
/* 80521394  90 1D 09 A0 */	stw r0, 0x9a0(r29)
lbl_80521398:
/* 80521398  39 61 00 20 */	addi r11, r1, 0x20
/* 8052139C  4B B7 9B 85 */	bl func_8009AF20
/* 805213A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805213A4  7C 08 03 A6 */	mtlr r0
/* 805213A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805213AC  4E 80 00 20 */	blr 
