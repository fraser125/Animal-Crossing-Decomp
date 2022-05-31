lbl_805A1A18:
/* 805A1A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1A1C  7C 08 02 A6 */	mflr r0
/* 805A1A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1A28  7C 7F 1B 78 */	mr r31, r3
/* 805A1A2C  4B FF FE 85 */	bl aITB_wait_init
/* 805A1A30  3C 60 80 65 */	lis r3, lit_476@ha /* 0x8064A2E4@ha */
/* 805A1A34  C0 03 A2 E4 */	lfs f0, lit_476@l(r3)  /* 0x8064A2E4@l */
/* 805A1A38  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A1A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1A44  7C 08 03 A6 */	mtlr r0
/* 805A1A48  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1A4C  4E 80 00 20 */	blr 
