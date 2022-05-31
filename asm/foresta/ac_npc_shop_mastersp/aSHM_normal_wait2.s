lbl_8057DA00:
/* 8057DA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DA04  7C 08 02 A6 */	mflr r0
/* 8057DA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DA0C  A8 A3 00 B6 */	lha r5, 0xb6(r3)
/* 8057DA10  7C A0 07 35 */	extsh. r0, r5
/* 8057DA14  7C 05 00 D0 */	neg r0, r5
/* 8057DA18  41 80 00 08 */	blt lbl_8057DA20
/* 8057DA1C  7C A0 2B 78 */	mr r0, r5
lbl_8057DA20:
/* 8057DA20  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 8057DA24  40 81 00 14 */	ble lbl_8057DA38
/* 8057DA28  3C A0 80 65 */	lis r5, lit_842@ha /* 0x80649A18@ha */
/* 8057DA2C  C0 05 9A 18 */	lfs f0, lit_842@l(r5)  /* 0x80649A18@l */
/* 8057DA30  D0 03 01 44 */	stfs f0, 0x144(r3)
/* 8057DA34  48 00 00 10 */	b lbl_8057DA44
lbl_8057DA38:
/* 8057DA38  3C A0 80 65 */	lis r5, lit_697@ha /* 0x80649A14@ha */
/* 8057DA3C  C0 05 9A 14 */	lfs f0, lit_697@l(r5)  /* 0x80649A14@l */
/* 8057DA40  D0 03 01 44 */	stfs f0, 0x144(r3)
lbl_8057DA44:
/* 8057DA44  4B FF FE C9 */	bl aSHM_normal_wait_common
/* 8057DA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DA4C  7C 08 03 A6 */	mtlr r0
/* 8057DA50  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DA54  4E 80 00 20 */	blr 
