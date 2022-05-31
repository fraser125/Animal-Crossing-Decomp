lbl_8040F650:
/* 8040F650  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040F654  7C 08 02 A6 */	mflr r0
/* 8040F658  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040F65C  39 61 00 30 */	addi r11, r1, 0x30
/* 8040F660  4B C8 B8 75 */	bl func_8009AED4
/* 8040F664  7C 7E 1B 78 */	mr r30, r3
/* 8040F668  7C 9D 23 78 */	mr r29, r4
/* 8040F66C  A8 03 01 74 */	lha r0, 0x174(r3)
/* 8040F670  2C 00 00 06 */	cmpwi r0, 6
/* 8040F674  41 82 00 D4 */	beq lbl_8040F748
/* 8040F678  2C 00 00 04 */	cmpwi r0, 4
/* 8040F67C  41 82 00 CC */	beq lbl_8040F748
/* 8040F680  83 FD 00 00 */	lwz r31, 0(r29)
/* 8040F684  7F E3 FB 78 */	mr r3, r31
/* 8040F688  4B FD 5A 81 */	bl _texture_z_light_fog_prim
/* 8040F68C  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806437A0@ha */
/* 8040F690  3C 80 80 64 */	lis r4, lit_461@ha /* 0x8064379C@ha */
/* 8040F694  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 8040F698  C0 23 37 A0 */	lfs f1, lit_462@l(r3)  /* 0x806437A0@l */
/* 8040F69C  C0 44 37 9C */	lfs f2, lit_461@l(r4)  /* 0x8064379C@l */
/* 8040F6A0  38 80 00 01 */	li r4, 1
/* 8040F6A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040F6A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040F6AC  FC 00 00 1E */	fctiwz f0, f0
/* 8040F6B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8040F6B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8040F6B8  4B FF CE 01 */	bl Matrix_RotateX
/* 8040F6BC  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806437A0@ha */
/* 8040F6C0  3C 80 80 64 */	lis r4, lit_461@ha /* 0x8064379C@ha */
/* 8040F6C4  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 8040F6C8  C0 23 37 A0 */	lfs f1, lit_462@l(r3)  /* 0x806437A0@l */
/* 8040F6CC  C0 44 37 9C */	lfs f2, lit_461@l(r4)  /* 0x8064379C@l */
/* 8040F6D0  38 80 00 01 */	li r4, 1
/* 8040F6D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040F6D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040F6DC  FC 00 00 1E */	fctiwz f0, f0
/* 8040F6E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8040F6E4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8040F6E8  4B FF D1 09 */	bl Matrix_RotateZ
/* 8040F6EC  3C 80 80 64 */	lis r4, lit_463@ha /* 0x806437A4@ha */
/* 8040F6F0  38 60 00 01 */	li r3, 1
/* 8040F6F4  C0 24 37 A4 */	lfs f1, lit_463@l(r4)  /* 0x806437A4@l */
/* 8040F6F8  FC 40 08 90 */	fmr f2, f1
/* 8040F6FC  FC 60 08 90 */	fmr f3, f1
/* 8040F700  4B FF CC ED */	bl Matrix_scale
/* 8040F704  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8040F708  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8040F70C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8040F710  38 7E 00 08 */	addi r3, r30, 8
/* 8040F714  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8040F718  90 1E 00 00 */	stw r0, 0(r30)
/* 8040F71C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8040F720  4B FF DC B5 */	bl _Matrix_to_Mtx_new
/* 8040F724  90 7E 00 04 */	stw r3, 4(r30)
/* 8040F728  3C 60 80 6E */	lis r3, glider_model@ha /* 0x806E0250@ha */
/* 8040F72C  3C 80 DE 00 */	lis r4, 0xde00
/* 8040F730  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8040F734  38 03 02 50 */	addi r0, r3, glider_model@l /* 0x806E0250@l */
/* 8040F738  38 65 00 08 */	addi r3, r5, 8
/* 8040F73C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8040F740  90 85 00 00 */	stw r4, 0(r5)
/* 8040F744  90 05 00 04 */	stw r0, 4(r5)
lbl_8040F748:
/* 8040F748  39 61 00 30 */	addi r11, r1, 0x30
/* 8040F74C  4B C8 B7 D5 */	bl func_8009AF20
/* 8040F750  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040F754  7C 08 03 A6 */	mtlr r0
/* 8040F758  38 21 00 30 */	addi r1, r1, 0x30
/* 8040F75C  4E 80 00 20 */	blr 
