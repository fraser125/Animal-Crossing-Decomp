lbl_804476B0:
/* 804476B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804476B4  7C 08 02 A6 */	mflr r0
/* 804476B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804476BC  39 61 00 30 */	addi r11, r1, 0x30
/* 804476C0  4B C5 38 09 */	bl func_8009AEC8
/* 804476C4  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 804476C8  7C 7B 1B 78 */	mr r27, r3
/* 804476CC  7C 9C 23 78 */	mr r28, r4
/* 804476D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804476D4  3B FB 00 38 */	addi r31, r27, 0x38
/* 804476D8  41 82 00 0C */	beq lbl_804476E4
/* 804476DC  3B DF 00 70 */	addi r30, r31, 0x70
/* 804476E0  48 00 00 08 */	b lbl_804476E8
lbl_804476E4:
/* 804476E4  3B DF 02 B0 */	addi r30, r31, 0x2b0
lbl_804476E8:
/* 804476E8  A8 7B 06 0C */	lha r3, 0x60c(r27)
/* 804476EC  3C 00 43 30 */	lis r0, 0x4330
/* 804476F0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 804476F4  3C A0 80 64 */	lis r5, lit_838@ha /* 0x806442D0@ha */
/* 804476F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804476FC  90 01 00 08 */	stw r0, 8(r1)
/* 80447700  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 80447704  90 61 00 0C */	stw r3, 0xc(r1)
/* 80447708  38 60 00 00 */	li r3, 0
/* 8044770C  C0 65 42 D0 */	lfs f3, lit_838@l(r5)  /* 0x806442D0@l */
/* 80447710  C8 01 00 08 */	lfd f0, 8(r1)
/* 80447714  83 BC 00 00 */	lwz r29, 0(r28)
/* 80447718  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044771C  C0 3B 05 A0 */	lfs f1, 0x5a0(r27)
/* 80447720  C0 5B 05 A4 */	lfs f2, 0x5a4(r27)
/* 80447724  EC 03 00 32 */	fmuls f0, f3, f0
/* 80447728  C0 7B 05 A8 */	lfs f3, 0x5a8(r27)
/* 8044772C  FC 00 00 1E */	fctiwz f0, f0
/* 80447730  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80447734  83 41 00 14 */	lwz r26, 0x14(r1)
/* 80447738  4B FC 4B C9 */	bl Matrix_translate
/* 8044773C  A8 7B 06 0E */	lha r3, 0x60e(r27)
/* 80447740  38 80 00 01 */	li r4, 1
/* 80447744  4B FC 4F 19 */	bl Matrix_RotateY
/* 80447748  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044774C  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 80447750  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 80447754  C0 63 43 34 */	lfs f3, lit_1315@l(r3)  /* 0x80644334@l */
/* 80447758  38 60 00 01 */	li r3, 1
/* 8044775C  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80447760  FC 40 08 90 */	fmr f2, f1
/* 80447764  EC 63 00 32 */	fmuls f3, f3, f0
/* 80447768  4B FC 4B 99 */	bl Matrix_translate
/* 8044776C  7F 43 D3 78 */	mr r3, r26
/* 80447770  38 80 00 01 */	li r4, 1
/* 80447774  4B FC 4D 45 */	bl Matrix_RotateX
/* 80447778  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044777C  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 80447780  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80447784  C0 25 42 48 */	lfs f1, lit_468@l(r5)  /* 0x80644248@l */
/* 80447788  FC 00 00 50 */	fneg f0, f0
/* 8044778C  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 80447790  FC 40 08 90 */	fmr f2, f1
/* 80447794  38 60 00 01 */	li r3, 1
/* 80447798  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044779C  4B FC 4B 65 */	bl Matrix_translate
/* 804477A0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804477A4  38 60 00 01 */	li r3, 1
/* 804477A8  FC 40 08 90 */	fmr f2, f1
/* 804477AC  FC 60 08 90 */	fmr f3, f1
/* 804477B0  4B FC 4C 3D */	bl Matrix_scale
/* 804477B4  83 5D 02 D0 */	lwz r26, 0x2d0(r29)
/* 804477B8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804477BC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804477C0  38 7A 00 08 */	addi r3, r26, 8
/* 804477C4  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 804477C8  90 1A 00 00 */	stw r0, 0(r26)
/* 804477CC  80 7C 00 00 */	lwz r3, 0(r28)
/* 804477D0  4B FC 5C 05 */	bl _Matrix_to_Mtx_new
/* 804477D4  3C 80 80 44 */	lis r4, mfish_sfish_before_disp@ha /* 0x8044758C@ha */
/* 804477D8  90 7A 00 04 */	stw r3, 4(r26)
/* 804477DC  38 C4 75 8C */	addi r6, r4, mfish_sfish_before_disp@l /* 0x8044758C@l */
/* 804477E0  7F 83 E3 78 */	mr r3, r28
/* 804477E4  7F E4 FB 78 */	mr r4, r31
/* 804477E8  7F C5 F3 78 */	mr r5, r30
/* 804477EC  7F 68 DB 78 */	mr r8, r27
/* 804477F0  38 E0 00 00 */	li r7, 0
/* 804477F4  4B F2 9F 45 */	bl cKF_Si3_draw_R_SV
/* 804477F8  39 61 00 30 */	addi r11, r1, 0x30
/* 804477FC  4B C5 37 19 */	bl func_8009AF14
/* 80447800  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80447804  7C 08 03 A6 */	mtlr r0
/* 80447808  38 21 00 30 */	addi r1, r1, 0x30
/* 8044780C  4E 80 00 20 */	blr 
