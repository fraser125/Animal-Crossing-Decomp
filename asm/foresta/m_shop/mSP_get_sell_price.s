lbl_803EB120:
/* 803EB120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB124  7C 08 02 A6 */	mflr r0
/* 803EB128  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EB12C  7C 64 1B 78 */	mr r4, r3
/* 803EB130  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB134  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803EB138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EB13C  3F E3 00 02 */	addis r31, r3, 2
/* 803EB140  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803EB144  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 803EB148  7C 03 20 40 */	cmplw r3, r4
/* 803EB14C  40 80 00 0C */	bge lbl_803EB158
/* 803EB150  4B FF FE F9 */	bl mSP_get_sell_price_sub
/* 803EB154  48 00 00 08 */	b lbl_803EB15C
lbl_803EB158:
/* 803EB158  7C 64 18 50 */	subf r3, r4, r3
lbl_803EB15C:
/* 803EB15C  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 803EB160  90 64 00 8C */	stw r3, 0x8c(r4)
/* 803EB164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EB16C  7C 08 03 A6 */	mtlr r0
/* 803EB170  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB174  4E 80 00 20 */	blr 
