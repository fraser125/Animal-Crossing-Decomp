lbl_804D7360:
/* 804D7360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7364  7C 08 02 A6 */	mflr r0
/* 804D7368  2C 03 00 00 */	cmpwi r3, 0
/* 804D736C  7C 85 23 78 */	mr r5, r4
/* 804D7370  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7374  41 80 00 20 */	blt lbl_804D7394
/* 804D7378  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 804D737C  7C 64 1B 78 */	mr r4, r3
/* 804D7380  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 804D7384  3C 63 00 02 */	addis r3, r3, 2
/* 804D7388  38 C0 00 00 */	li r6, 0
/* 804D738C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804D7390  4B F0 9A 99 */	bl mPr_SetPossessionItem
lbl_804D7394:
/* 804D7394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7398  7C 08 03 A6 */	mtlr r0
/* 804D739C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D73A0  4E 80 00 20 */	blr 
