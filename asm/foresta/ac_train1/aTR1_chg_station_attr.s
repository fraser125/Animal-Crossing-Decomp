lbl_805C0798:
/* 805C0798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C079C  7C 08 02 A6 */	mflr r0
/* 805C07A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C07A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C07A8  7C 7F 1B 78 */	mr r31, r3
/* 805C07AC  4B DD A5 81 */	bl mEv_CheckFirstIntro
/* 805C07B0  2C 03 00 00 */	cmpwi r3, 0
/* 805C07B4  40 82 00 70 */	bne lbl_805C0824
/* 805C07B8  2C 1F 00 05 */	cmpwi r31, 5
/* 805C07BC  40 82 00 34 */	bne lbl_805C07F0
/* 805C07C0  3C 80 80 6C */	lis r4, doorway_pos@ha /* 0x806C7224@ha */
/* 805C07C4  38 61 00 14 */	addi r3, r1, 0x14
/* 805C07C8  38 E4 72 24 */	addi r7, r4, doorway_pos@l /* 0x806C7224@l */
/* 805C07CC  38 80 00 07 */	li r4, 7
/* 805C07D0  80 C7 00 00 */	lwz r6, 0(r7)
/* 805C07D4  80 A7 00 04 */	lwz r5, 4(r7)
/* 805C07D8  80 07 00 08 */	lwz r0, 8(r7)
/* 805C07DC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805C07E0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 805C07E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C07E8  4B DD 14 59 */	bl mCoBG_SetAttribute
/* 805C07EC  48 00 00 38 */	b lbl_805C0824
lbl_805C07F0:
/* 805C07F0  2C 1F 00 06 */	cmpwi r31, 6
/* 805C07F4  40 82 00 30 */	bne lbl_805C0824
/* 805C07F8  3C 80 80 6C */	lis r4, doorway_pos@ha /* 0x806C7224@ha */
/* 805C07FC  38 61 00 08 */	addi r3, r1, 8
/* 805C0800  38 E4 72 24 */	addi r7, r4, doorway_pos@l /* 0x806C7224@l */
/* 805C0804  38 80 00 20 */	li r4, 0x20
/* 805C0808  80 C7 00 00 */	lwz r6, 0(r7)
/* 805C080C  80 A7 00 04 */	lwz r5, 4(r7)
/* 805C0810  80 07 00 08 */	lwz r0, 8(r7)
/* 805C0814  90 C1 00 08 */	stw r6, 8(r1)
/* 805C0818  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805C081C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C0820  4B DD 14 21 */	bl mCoBG_SetAttribute
lbl_805C0824:
/* 805C0824  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C0828  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C082C  7C 08 03 A6 */	mtlr r0
/* 805C0830  38 21 00 30 */	addi r1, r1, 0x30
/* 805C0834  4E 80 00 20 */	blr 
