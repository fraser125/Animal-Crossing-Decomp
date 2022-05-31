lbl_805186BC:
/* 805186BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805186C0  7C 08 02 A6 */	mflr r0
/* 805186C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805186C8  4B FF FF 45 */	bl getP_top_of_angler_pID
/* 805186CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805186D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805186D4  3C A4 00 02 */	addis r5, r4, 2
/* 805186D8  7C 64 1B 78 */	mr r4, r3
/* 805186DC  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805186E0  4B EC 7A 65 */	bl mPr_CheckCmpPersonalID
/* 805186E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805186E8  7C 08 03 A6 */	mtlr r0
/* 805186EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805186F0  4E 80 00 20 */	blr 
