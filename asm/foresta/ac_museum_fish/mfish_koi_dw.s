lbl_8043F488:
/* 8043F488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043F48C  7C 08 02 A6 */	mflr r0
/* 8043F490  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043F494  39 61 00 20 */	addi r11, r1, 0x20
/* 8043F498  4B C5 BA 31 */	bl func_8009AEC8
/* 8043F49C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8043F4A0  7C 7B 1B 78 */	mr r27, r3
/* 8043F4A4  7C 9C 23 78 */	mr r28, r4
/* 8043F4A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8043F4AC  3B FB 00 38 */	addi r31, r27, 0x38
/* 8043F4B0  41 82 00 0C */	beq lbl_8043F4BC
/* 8043F4B4  3B DF 00 70 */	addi r30, r31, 0x70
/* 8043F4B8  48 00 00 08 */	b lbl_8043F4C0
lbl_8043F4BC:
/* 8043F4BC  3B DF 02 B0 */	addi r30, r31, 0x2b0
lbl_8043F4C0:
/* 8043F4C0  83 BC 00 00 */	lwz r29, 0(r28)
/* 8043F4C4  38 60 00 00 */	li r3, 0
/* 8043F4C8  C0 3B 05 A0 */	lfs f1, 0x5a0(r27)
/* 8043F4CC  C0 5B 05 A4 */	lfs f2, 0x5a4(r27)
/* 8043F4D0  C0 7B 05 A8 */	lfs f3, 0x5a8(r27)
/* 8043F4D4  4B FC CE 2D */	bl Matrix_translate
/* 8043F4D8  A8 7B 06 0E */	lha r3, 0x60e(r27)
/* 8043F4DC  38 80 00 01 */	li r4, 1
/* 8043F4E0  4B FC D1 7D */	bl Matrix_RotateY
/* 8043F4E4  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 8043F4E8  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8043F4EC  C0 63 43 34 */	lfs f3, lit_1315@l(r3)  /* 0x80644334@l */
/* 8043F4F0  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8043F4F4  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8043F4F8  38 60 00 01 */	li r3, 1
/* 8043F4FC  C0 44 43 08 */	lfs f2, lit_1068@l(r4)  /* 0x80644308@l */
/* 8043F500  C0 3B 00 04 */	lfs f1, 4(r27)
/* 8043F504  EC 63 00 32 */	fmuls f3, f3, f0
/* 8043F508  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043F50C  C0 25 42 48 */	lfs f1, lit_468@l(r5)  /* 0x80644248@l */
/* 8043F510  4B FC CD F1 */	bl Matrix_translate
/* 8043F514  A8 7B 06 0C */	lha r3, 0x60c(r27)
/* 8043F518  38 80 00 01 */	li r4, 1
/* 8043F51C  4B FC CF 9D */	bl Matrix_RotateX
/* 8043F520  A8 1B 06 1C */	lha r0, 0x61c(r27)
/* 8043F524  38 60 F1 C8 */	li r3, -3640
/* 8043F528  7C 00 16 70 */	srawi r0, r0, 2
/* 8043F52C  7C 80 00 D0 */	neg r4, r0
/* 8043F530  2C 04 F1 C8 */	cmpwi r4, -3640
/* 8043F534  40 81 00 08 */	ble lbl_8043F53C
/* 8043F538  7C 83 23 78 */	mr r3, r4
lbl_8043F53C:
/* 8043F53C  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 8043F540  40 80 00 18 */	bge lbl_8043F558
/* 8043F544  2C 04 F1 C8 */	cmpwi r4, -3640
/* 8043F548  38 00 F1 C8 */	li r0, -3640
/* 8043F54C  40 81 00 10 */	ble lbl_8043F55C
/* 8043F550  7C 80 23 78 */	mr r0, r4
/* 8043F554  48 00 00 08 */	b lbl_8043F55C
lbl_8043F558:
/* 8043F558  38 00 0E 38 */	li r0, 0xe38
lbl_8043F55C:
/* 8043F55C  7C 03 07 34 */	extsh r3, r0
/* 8043F560  38 80 00 01 */	li r4, 1
/* 8043F564  4B FC D2 8D */	bl Matrix_RotateZ
/* 8043F568  C0 3B 00 04 */	lfs f1, 4(r27)
/* 8043F56C  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 8043F570  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8043F574  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043F578  FC 40 08 50 */	fneg f2, f1
/* 8043F57C  C0 64 43 08 */	lfs f3, lit_1068@l(r4)  /* 0x80644308@l */
/* 8043F580  C0 23 42 5C */	lfs f1, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043F584  FC 00 00 50 */	fneg f0, f0
/* 8043F588  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043F58C  38 60 00 01 */	li r3, 1
/* 8043F590  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8043F594  EC 61 00 32 */	fmuls f3, f1, f0
/* 8043F598  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 8043F59C  4B FC CD 65 */	bl Matrix_translate
/* 8043F5A0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8043F5A4  38 60 00 01 */	li r3, 1
/* 8043F5A8  FC 40 08 90 */	fmr f2, f1
/* 8043F5AC  FC 60 08 90 */	fmr f3, f1
/* 8043F5B0  4B FC CE 3D */	bl Matrix_scale
/* 8043F5B4  83 5D 02 D0 */	lwz r26, 0x2d0(r29)
/* 8043F5B8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8043F5BC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8043F5C0  38 7A 00 08 */	addi r3, r26, 8
/* 8043F5C4  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8043F5C8  90 1A 00 00 */	stw r0, 0(r26)
/* 8043F5CC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8043F5D0  4B FC DE 05 */	bl _Matrix_to_Mtx_new
/* 8043F5D4  3C 80 80 44 */	lis r4, mfish_koi_before_disp@ha /* 0x8043F2E4@ha */
/* 8043F5D8  90 7A 00 04 */	stw r3, 4(r26)
/* 8043F5DC  38 C4 F2 E4 */	addi r6, r4, mfish_koi_before_disp@l /* 0x8043F2E4@l */
/* 8043F5E0  7F 83 E3 78 */	mr r3, r28
/* 8043F5E4  7F E4 FB 78 */	mr r4, r31
/* 8043F5E8  7F C5 F3 78 */	mr r5, r30
/* 8043F5EC  7F 68 DB 78 */	mr r8, r27
/* 8043F5F0  38 E0 00 00 */	li r7, 0
/* 8043F5F4  4B F3 21 45 */	bl cKF_Si3_draw_R_SV
/* 8043F5F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8043F5FC  4B C5 B9 19 */	bl func_8009AF14
/* 8043F600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043F604  7C 08 03 A6 */	mtlr r0
/* 8043F608  38 21 00 20 */	addi r1, r1, 0x20
/* 8043F60C  4E 80 00 20 */	blr 
