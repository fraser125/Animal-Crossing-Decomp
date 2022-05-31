lbl_80381BC4:
/* 80381BC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80381BC8  7C 08 02 A6 */	mflr r0
/* 80381BCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80381BD0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80381BD4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80381BD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80381BDC  4B D1 92 F9 */	bl func_8009AED4
/* 80381BE0  3B E3 1B D8 */	addi r31, r3, 0x1bd8
/* 80381BE4  3B C3 1B DC */	addi r30, r3, 0x1bdc
/* 80381BE8  C3 E3 1B D8 */	lfs f31, 0x1bd8(r3)
/* 80381BEC  7C 9D 23 78 */	mr r29, r4
/* 80381BF0  7F E3 FB 78 */	mr r3, r31
/* 80381BF4  48 03 92 05 */	bl inter_float
/* 80381BF8  2C 1D 00 00 */	cmpwi r29, 0
/* 80381BFC  40 82 00 14 */	bne lbl_80381C10
/* 80381C00  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 80381C04  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 80381C08  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80381C0C  48 00 00 10 */	b lbl_80381C1C
lbl_80381C10:
/* 80381C10  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80381C14  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80381C18  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_80381C1C:
/* 80381C1C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80381C20  39 61 00 20 */	addi r11, r1, 0x20
/* 80381C24  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80381C28  4B D1 92 F9 */	bl func_8009AF20
/* 80381C2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80381C30  7C 08 03 A6 */	mtlr r0
/* 80381C34  38 21 00 30 */	addi r1, r1, 0x30
/* 80381C38  4E 80 00 20 */	blr 
