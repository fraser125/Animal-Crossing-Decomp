lbl_8057E760:
/* 8057E760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E764  7C 08 02 A6 */	mflr r0
/* 8057E768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E76C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057E770  7C 7F 1B 78 */	mr r31, r3
/* 8057E774  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8057E778  28 00 00 FF */	cmplwi r0, 0xff
/* 8057E77C  40 82 00 50 */	bne lbl_8057E7CC
/* 8057E780  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8057E784  28 00 00 10 */	cmplwi r0, 0x10
/* 8057E788  40 82 00 3C */	bne lbl_8057E7C4
/* 8057E78C  4B AD E5 69 */	bl fqrand
/* 8057E790  3C 60 80 65 */	lis r3, lit_513@ha /* 0x80649A30@ha */
/* 8057E794  3C 80 80 6C */	lis r4, action@ha /* 0x806C0A04@ha */
/* 8057E798  38 A3 9A 30 */	addi r5, r3, lit_513@l /* 0x80649A30@l */
/* 8057E79C  7F E3 FB 78 */	mr r3, r31
/* 8057E7A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8057E7A4  38 84 0A 04 */	addi r4, r4, action@l /* 0x806C0A04@l */
/* 8057E7A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057E7AC  FC 00 00 1E */	fctiwz f0, f0
/* 8057E7B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057E7B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8057E7B8  54 00 10 3A */	slwi r0, r0, 2
/* 8057E7BC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8057E7C0  4B FF FE 8D */	bl aNSO_setupAction
lbl_8057E7C4:
/* 8057E7C4  7F E3 FB 78 */	mr r3, r31
/* 8057E7C8  4B FF FE 21 */	bl func_8057E5E8
lbl_8057E7CC:
/* 8057E7CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E7D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057E7D4  7C 08 03 A6 */	mtlr r0
/* 8057E7D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E7DC  4E 80 00 20 */	blr 
