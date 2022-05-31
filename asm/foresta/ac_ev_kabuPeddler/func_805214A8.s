lbl_805214A8:
/* 805214A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805214AC  7C 08 02 A6 */	mflr r0
/* 805214B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805214B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805214B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805214BC  3C 63 00 02 */	addis r3, r3, 2
/* 805214C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805214C4  3B E0 00 00 */	li r31, 0
/* 805214C8  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 805214CC  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 805214D0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 805214D4  7C 63 02 14 */	add r3, r3, r0
/* 805214D8  38 63 04 EC */	addi r3, r3, 0x4ec
/* 805214DC  4B EB EC 69 */	bl mPr_CheckCmpPersonalID
/* 805214E0  2C 03 00 01 */	cmpwi r3, 1
/* 805214E4  40 82 00 08 */	bne lbl_805214EC
/* 805214E8  3B E0 00 01 */	li r31, 1
lbl_805214EC:
/* 805214EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805214F0  7F E3 FB 78 */	mr r3, r31
/* 805214F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805214F8  7C 08 03 A6 */	mtlr r0
/* 805214FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80521500  4E 80 00 20 */	blr 
