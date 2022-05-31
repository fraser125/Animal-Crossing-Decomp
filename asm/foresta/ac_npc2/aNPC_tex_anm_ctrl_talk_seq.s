lbl_8053C08C:
/* 8053C08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053C090  7C 08 02 A6 */	mflr r0
/* 8053C094  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053C098  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053C09C  7C 9F 23 78 */	mr r31, r4
/* 8053C0A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8053C0A4  7C 7E 1B 78 */	mr r30, r3
/* 8053C0A8  88 A3 00 01 */	lbz r5, 1(r3)
/* 8053C0AC  88 03 00 00 */	lbz r0, 0(r3)
/* 8053C0B0  7C 05 00 40 */	cmplw r5, r0
/* 8053C0B4  41 82 00 48 */	beq lbl_8053C0FC
/* 8053C0B8  4B B2 0C 3D */	bl fqrand
/* 8053C0BC  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053C0C0  3C 60 80 65 */	lis r3, lit_796@ha /* 0x8064937C@ha */
/* 8053C0C4  38 A4 93 94 */	addi r5, r4, lit_940@l /* 0x80649394@l */
/* 8053C0C8  C0 03 93 7C */	lfs f0, lit_796@l(r3)  /* 0x8064937C@l */
/* 8053C0CC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8053C0D0  7F C3 F3 78 */	mr r3, r30
/* 8053C0D4  88 9E 00 00 */	lbz r4, 0(r30)
/* 8053C0D8  7F E5 FB 78 */	mr r5, r31
/* 8053C0DC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8053C0E0  38 C0 00 00 */	li r6, 0
/* 8053C0E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8053C0E8  FC 00 00 1E */	fctiwz f0, f0
/* 8053C0EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053C0F0  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8053C0F4  4B FF FC A5 */	bl aNPC_set_tex_anime
/* 8053C0F8  48 00 00 B0 */	b lbl_8053C1A8
lbl_8053C0FC:
/* 8053C0FC  3C A0 80 65 */	lis r5, data_80649374@ha /* 0x80649374@ha */
/* 8053C100  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8053C104  C0 05 93 74 */	lfs f0, data_80649374@l(r5)  /* 0x80649374@l */
/* 8053C108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053C10C  4C 40 13 82 */	cror 2, 0, 2
/* 8053C110  40 82 00 88 */	bne lbl_8053C198
/* 8053C114  88 1E 00 03 */	lbz r0, 3(r30)
/* 8053C118  28 00 00 00 */	cmplwi r0, 0
/* 8053C11C  40 82 00 74 */	bne lbl_8053C190
/* 8053C120  88 9E 00 0D */	lbz r4, 0xd(r30)
/* 8053C124  38 04 FF FF */	addi r0, r4, -1
/* 8053C128  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8053C12C  88 FE 00 0D */	lbz r7, 0xd(r30)
/* 8053C130  28 07 00 00 */	cmplwi r7, 0
/* 8053C134  40 82 00 48 */	bne lbl_8053C17C
/* 8053C138  4B B2 0B BD */	bl fqrand
/* 8053C13C  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053C140  3C 60 80 65 */	lis r3, lit_796@ha /* 0x8064937C@ha */
/* 8053C144  38 A4 93 94 */	addi r5, r4, lit_940@l /* 0x80649394@l */
/* 8053C148  C0 03 93 7C */	lfs f0, lit_796@l(r3)  /* 0x8064937C@l */
/* 8053C14C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8053C150  7F C3 F3 78 */	mr r3, r30
/* 8053C154  88 9E 00 00 */	lbz r4, 0(r30)
/* 8053C158  7F E5 FB 78 */	mr r5, r31
/* 8053C15C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8053C160  38 C0 00 00 */	li r6, 0
/* 8053C164  EC 00 08 2A */	fadds f0, f0, f1
/* 8053C168  FC 00 00 1E */	fctiwz f0, f0
/* 8053C16C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053C170  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8053C174  4B FF FC 25 */	bl aNPC_set_tex_anime
/* 8053C178  48 00 00 30 */	b lbl_8053C1A8
lbl_8053C17C:
/* 8053C17C  88 9E 00 00 */	lbz r4, 0(r30)
/* 8053C180  7F E5 FB 78 */	mr r5, r31
/* 8053C184  38 C0 00 00 */	li r6, 0
/* 8053C188  4B FF FC 11 */	bl aNPC_set_tex_anime
/* 8053C18C  48 00 00 1C */	b lbl_8053C1A8
lbl_8053C190:
/* 8053C190  4B FF FD 35 */	bl aNPC_tex_anm_ctrl_set_pat
/* 8053C194  48 00 00 14 */	b lbl_8053C1A8
lbl_8053C198:
/* 8053C198  3C 60 80 65 */	lis r3, lit_961@ha /* 0x8064939C@ha */
/* 8053C19C  C0 03 93 9C */	lfs f0, lit_961@l(r3)  /* 0x8064939C@l */
/* 8053C1A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8053C1A4  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8053C1A8:
/* 8053C1A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053C1AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053C1B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8053C1B4  7C 08 03 A6 */	mtlr r0
/* 8053C1B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8053C1BC  4E 80 00 20 */	blr 
