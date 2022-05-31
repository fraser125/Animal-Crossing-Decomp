lbl_8050B0EC:
/* 8050B0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B0F0  7C 08 02 A6 */	mflr r0
/* 8050B0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B0FC  7C 9F 23 78 */	mr r31, r4
/* 8050B100  93 C1 00 08 */	stw r30, 8(r1)
/* 8050B104  7C 7E 1B 78 */	mr r30, r3
/* 8050B108  38 60 00 0A */	li r3, 0xa
/* 8050B10C  4B FF DC D5 */	bl mRF_GetRandom
/* 8050B110  3C 80 80 6A */	lis r4, l_mRF_step3_blockss@ha /* 0x8069EC4C@ha */
/* 8050B114  54 65 10 3A */	slwi r5, r3, 2
/* 8050B118  38 64 EC 4C */	addi r3, r4, l_mRF_step3_blockss@l /* 0x8069EC4C@l */
/* 8050B11C  38 00 00 46 */	li r0, 0x46
/* 8050B120  7C A3 28 2E */	lwzx r5, r3, r5
/* 8050B124  7F C4 F3 78 */	mr r4, r30
/* 8050B128  7F E3 FB 78 */	mr r3, r31
/* 8050B12C  7C 09 03 A6 */	mtctr r0
lbl_8050B130:
/* 8050B130  88 05 00 00 */	lbz r0, 0(r5)
/* 8050B134  98 04 00 00 */	stb r0, 0(r4)
/* 8050B138  38 84 00 01 */	addi r4, r4, 1
/* 8050B13C  88 05 00 00 */	lbz r0, 0(r5)
/* 8050B140  38 A5 00 01 */	addi r5, r5, 1
/* 8050B144  98 03 00 00 */	stb r0, 0(r3)
/* 8050B148  38 63 00 01 */	addi r3, r3, 1
/* 8050B14C  42 00 FF E4 */	bdnz lbl_8050B130
/* 8050B150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050B158  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050B15C  7C 08 03 A6 */	mtlr r0
/* 8050B160  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B164  4E 80 00 20 */	blr 
