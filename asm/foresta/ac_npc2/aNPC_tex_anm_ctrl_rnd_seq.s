lbl_8053BF38:
/* 8053BF38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053BF3C  7C 08 02 A6 */	mflr r0
/* 8053BF40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053BF44  39 61 00 30 */	addi r11, r1, 0x30
/* 8053BF48  4B B5 EF 8D */	bl func_8009AED4
/* 8053BF4C  7C 7E 1B 78 */	mr r30, r3
/* 8053BF50  7C 9F 23 78 */	mr r31, r4
/* 8053BF54  88 A3 00 01 */	lbz r5, 1(r3)
/* 8053BF58  88 03 00 00 */	lbz r0, 0(r3)
/* 8053BF5C  7C 05 00 40 */	cmplw r5, r0
/* 8053BF60  41 82 00 48 */	beq lbl_8053BFA8
/* 8053BF64  4B B2 0D 91 */	bl fqrand
/* 8053BF68  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053BF6C  3C 60 80 65 */	lis r3, lit_796@ha /* 0x8064937C@ha */
/* 8053BF70  38 A4 93 94 */	addi r5, r4, lit_940@l /* 0x80649394@l */
/* 8053BF74  C0 03 93 7C */	lfs f0, lit_796@l(r3)  /* 0x8064937C@l */
/* 8053BF78  C0 45 00 00 */	lfs f2, 0(r5)
/* 8053BF7C  7F C3 F3 78 */	mr r3, r30
/* 8053BF80  88 9E 00 00 */	lbz r4, 0(r30)
/* 8053BF84  7F E5 FB 78 */	mr r5, r31
/* 8053BF88  EC 22 00 72 */	fmuls f1, f2, f1
/* 8053BF8C  38 C0 FF FF */	li r6, -1
/* 8053BF90  EC 00 08 2A */	fadds f0, f0, f1
/* 8053BF94  FC 00 00 1E */	fctiwz f0, f0
/* 8053BF98  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053BF9C  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8053BFA0  4B FF FD F9 */	bl aNPC_set_tex_anime
/* 8053BFA4  48 00 00 D0 */	b lbl_8053C074
lbl_8053BFA8:
/* 8053BFA8  3C A0 80 65 */	lis r5, data_80649374@ha /* 0x80649374@ha */
/* 8053BFAC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8053BFB0  C0 05 93 74 */	lfs f0, data_80649374@l(r5)  /* 0x80649374@l */
/* 8053BFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053BFB8  4C 40 13 82 */	cror 2, 0, 2
/* 8053BFBC  40 82 00 A8 */	bne lbl_8053C064
/* 8053BFC0  88 1E 00 03 */	lbz r0, 3(r30)
/* 8053BFC4  28 00 00 00 */	cmplwi r0, 0
/* 8053BFC8  40 82 00 94 */	bne lbl_8053C05C
/* 8053BFCC  88 9E 00 0D */	lbz r4, 0xd(r30)
/* 8053BFD0  38 04 FF FF */	addi r0, r4, -1
/* 8053BFD4  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8053BFD8  88 FE 00 0D */	lbz r7, 0xd(r30)
/* 8053BFDC  28 07 00 00 */	cmplwi r7, 0
/* 8053BFE0  40 82 00 68 */	bne lbl_8053C048
/* 8053BFE4  4B B2 0D 11 */	bl fqrand
/* 8053BFE8  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053BFEC  3C 60 80 65 */	lis r3, lit_796@ha /* 0x8064937C@ha */
/* 8053BFF0  C0 44 93 94 */	lfs f2, lit_940@l(r4)  /* 0x80649394@l */
/* 8053BFF4  C0 03 93 7C */	lfs f0, lit_796@l(r3)  /* 0x8064937C@l */
/* 8053BFF8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8053BFFC  EC 00 08 2A */	fadds f0, f0, f1
/* 8053C000  FC 00 00 1E */	fctiwz f0, f0
/* 8053C004  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053C008  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8053C00C  4B B2 0C E9 */	bl fqrand
/* 8053C010  3C 60 80 65 */	lis r3, lit_941@ha /* 0x80649398@ha */
/* 8053C014  88 9E 00 00 */	lbz r4, 0(r30)
/* 8053C018  38 A3 93 98 */	addi r5, r3, lit_941@l /* 0x80649398@l */
/* 8053C01C  7F C3 F3 78 */	mr r3, r30
/* 8053C020  C0 05 00 00 */	lfs f0, 0(r5)
/* 8053C024  7F E5 FB 78 */	mr r5, r31
/* 8053C028  7F A7 EB 78 */	mr r7, r29
/* 8053C02C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8053C030  FC 00 00 1E */	fctiwz f0, f0
/* 8053C034  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8053C038  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8053C03C  38 C6 00 20 */	addi r6, r6, 0x20
/* 8053C040  4B FF FD 59 */	bl aNPC_set_tex_anime
/* 8053C044  48 00 00 30 */	b lbl_8053C074
lbl_8053C048:
/* 8053C048  88 9E 00 00 */	lbz r4, 0(r30)
/* 8053C04C  7F E5 FB 78 */	mr r5, r31
/* 8053C050  38 C0 FF FF */	li r6, -1
/* 8053C054  4B FF FD 45 */	bl aNPC_set_tex_anime
/* 8053C058  48 00 00 1C */	b lbl_8053C074
lbl_8053C05C:
/* 8053C05C  4B FF FE 69 */	bl aNPC_tex_anm_ctrl_set_pat
/* 8053C060  48 00 00 14 */	b lbl_8053C074
lbl_8053C064:
/* 8053C064  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 8053C068  C0 03 93 78 */	lfs f0, lit_795@l(r3)  /* 0x80649378@l */
/* 8053C06C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8053C070  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8053C074:
/* 8053C074  39 61 00 30 */	addi r11, r1, 0x30
/* 8053C078  4B B5 EE A9 */	bl func_8009AF20
/* 8053C07C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053C080  7C 08 03 A6 */	mtlr r0
/* 8053C084  38 21 00 30 */	addi r1, r1, 0x30
/* 8053C088  4E 80 00 20 */	blr 
