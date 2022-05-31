lbl_80448F0C:
/* 80448F0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80448F10  7C 08 02 A6 */	mflr r0
/* 80448F14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80448F18  39 61 00 30 */	addi r11, r1, 0x30
/* 80448F1C  4B C5 1F AD */	bl func_8009AEC8
/* 80448F20  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80448F24  7C 7B 1B 78 */	mr r27, r3
/* 80448F28  7C 9C 23 78 */	mr r28, r4
/* 80448F2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80448F30  3B FB 00 38 */	addi r31, r27, 0x38
/* 80448F34  41 82 00 0C */	beq lbl_80448F40
/* 80448F38  3B DF 00 70 */	addi r30, r31, 0x70
/* 80448F3C  48 00 00 08 */	b lbl_80448F44
lbl_80448F40:
/* 80448F40  3B DF 02 B0 */	addi r30, r31, 0x2b0
lbl_80448F44:
/* 80448F44  A8 7B 06 0C */	lha r3, 0x60c(r27)
/* 80448F48  3C 00 43 30 */	lis r0, 0x4330
/* 80448F4C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80448F50  3C A0 80 64 */	lis r5, lit_838@ha /* 0x806442D0@ha */
/* 80448F54  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80448F58  90 01 00 08 */	stw r0, 8(r1)
/* 80448F5C  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 80448F60  90 61 00 0C */	stw r3, 0xc(r1)
/* 80448F64  38 60 00 00 */	li r3, 0
/* 80448F68  C0 65 42 D0 */	lfs f3, lit_838@l(r5)  /* 0x806442D0@l */
/* 80448F6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80448F70  83 BC 00 00 */	lwz r29, 0(r28)
/* 80448F74  EC 00 08 28 */	fsubs f0, f0, f1
/* 80448F78  C0 3B 05 A0 */	lfs f1, 0x5a0(r27)
/* 80448F7C  C0 5B 05 A4 */	lfs f2, 0x5a4(r27)
/* 80448F80  EC 03 00 32 */	fmuls f0, f3, f0
/* 80448F84  C0 7B 05 A8 */	lfs f3, 0x5a8(r27)
/* 80448F88  FC 00 00 1E */	fctiwz f0, f0
/* 80448F8C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80448F90  83 41 00 14 */	lwz r26, 0x14(r1)
/* 80448F94  4B FC 33 6D */	bl Matrix_translate
/* 80448F98  A8 7B 06 0E */	lha r3, 0x60e(r27)
/* 80448F9C  38 80 00 01 */	li r4, 1
/* 80448FA0  4B FC 36 BD */	bl Matrix_RotateY
/* 80448FA4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80448FA8  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 80448FAC  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 80448FB0  C0 63 43 34 */	lfs f3, lit_1315@l(r3)  /* 0x80644334@l */
/* 80448FB4  38 60 00 01 */	li r3, 1
/* 80448FB8  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80448FBC  FC 40 08 90 */	fmr f2, f1
/* 80448FC0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80448FC4  4B FC 33 3D */	bl Matrix_translate
/* 80448FC8  7F 43 D3 78 */	mr r3, r26
/* 80448FCC  38 80 00 01 */	li r4, 1
/* 80448FD0  4B FC 34 E9 */	bl Matrix_RotateX
/* 80448FD4  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80448FD8  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 80448FDC  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80448FE0  C0 25 42 48 */	lfs f1, lit_468@l(r5)  /* 0x80644248@l */
/* 80448FE4  FC 00 00 50 */	fneg f0, f0
/* 80448FE8  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 80448FEC  FC 40 08 90 */	fmr f2, f1
/* 80448FF0  38 60 00 01 */	li r3, 1
/* 80448FF4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80448FF8  4B FC 33 09 */	bl Matrix_translate
/* 80448FFC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80449000  38 60 00 01 */	li r3, 1
/* 80449004  FC 40 08 90 */	fmr f2, f1
/* 80449008  FC 60 08 90 */	fmr f3, f1
/* 8044900C  4B FC 33 E1 */	bl Matrix_scale
/* 80449010  83 5D 02 D0 */	lwz r26, 0x2d0(r29)
/* 80449014  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80449018  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8044901C  38 7A 00 08 */	addi r3, r26, 8
/* 80449020  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 80449024  90 1A 00 00 */	stw r0, 0(r26)
/* 80449028  80 7C 00 00 */	lwz r3, 0(r28)
/* 8044902C  4B FC 43 A9 */	bl _Matrix_to_Mtx_new
/* 80449030  3C 80 80 45 */	lis r4, mfish_gupi_before_disp@ha /* 0x80448BF0@ha */
/* 80449034  90 7A 00 04 */	stw r3, 4(r26)
/* 80449038  38 C4 8B F0 */	addi r6, r4, mfish_gupi_before_disp@l /* 0x80448BF0@l */
/* 8044903C  7F 83 E3 78 */	mr r3, r28
/* 80449040  7F E4 FB 78 */	mr r4, r31
/* 80449044  7F C5 F3 78 */	mr r5, r30
/* 80449048  7F 68 DB 78 */	mr r8, r27
/* 8044904C  38 E0 00 00 */	li r7, 0
/* 80449050  4B F2 86 E9 */	bl cKF_Si3_draw_R_SV
/* 80449054  39 61 00 30 */	addi r11, r1, 0x30
/* 80449058  4B C5 1E BD */	bl func_8009AF14
/* 8044905C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80449060  7C 08 03 A6 */	mtlr r0
/* 80449064  38 21 00 30 */	addi r1, r1, 0x30
/* 80449068  4E 80 00 20 */	blr 
