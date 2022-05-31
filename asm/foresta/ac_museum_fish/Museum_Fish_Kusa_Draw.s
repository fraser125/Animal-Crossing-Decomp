lbl_80430B8C:
/* 80430B8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80430B90  7C 08 02 A6 */	mflr r0
/* 80430B94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80430B98  39 61 00 30 */	addi r11, r1, 0x30
/* 80430B9C  4B C6 A3 29 */	bl func_8009AEC4
/* 80430BA0  3C C0 80 64 */	lis r6, lit_468@ha /* 0x80644248@ha */
/* 80430BA4  7C BE 2B 78 */	mr r30, r5
/* 80430BA8  38 A6 42 48 */	addi r5, r6, lit_468@l /* 0x80644248@l */
/* 80430BAC  7C 9D 23 78 */	mr r29, r4
/* 80430BB0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80430BB4  1F 7E 00 0C */	mulli r27, r30, 0xc
/* 80430BB8  3C C0 80 68 */	lis r6, kusa_pos@ha /* 0x80684EF0@ha */
/* 80430BBC  3C A0 80 64 */	lis r5, lit_1599@ha /* 0x80644354@ha */
/* 80430BC0  FC 40 08 90 */	fmr f2, f1
/* 80430BC4  38 06 4E F0 */	addi r0, r6, kusa_pos@l /* 0x80684EF0@l */
/* 80430BC8  C0 65 43 54 */	lfs f3, lit_1599@l(r5)  /* 0x80644354@l */
/* 80430BCC  7F 40 DA 14 */	add r26, r0, r27
/* 80430BD0  7C 7C 1B 78 */	mr r28, r3
/* 80430BD4  7F A3 EB 78 */	mr r3, r29
/* 80430BD8  7F 44 D3 78 */	mr r4, r26
/* 80430BDC  48 00 03 75 */	bl mfish_cull_check
/* 80430BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80430BE4  41 82 00 C4 */	beq lbl_80430CA8
/* 80430BE8  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 80430BEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80430BF0  41 82 00 18 */	beq lbl_80430C08
/* 80430BF4  1C 7E 05 58 */	mulli r3, r30, 0x558
/* 80430BF8  3F E3 00 01 */	addis r31, r3, 1
/* 80430BFC  3B FF FD 28 */	addi r31, r31, -728
/* 80430C00  7F FC FA 14 */	add r31, r28, r31
/* 80430C04  48 00 00 14 */	b lbl_80430C18
lbl_80430C08:
/* 80430C08  1C 7E 05 58 */	mulli r3, r30, 0x558
/* 80430C0C  3F E3 00 01 */	addis r31, r3, 1
/* 80430C10  3B FF FF 68 */	addi r31, r31, -152
/* 80430C14  7F FC FA 14 */	add r31, r28, r31
lbl_80430C18:
/* 80430C18  3C 60 80 68 */	lis r3, kusa_pos@ha /* 0x80684EF0@ha */
/* 80430C1C  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80430C20  38 03 4E F0 */	addi r0, r3, kusa_pos@l /* 0x80684EF0@l */
/* 80430C24  83 3D 00 00 */	lwz r25, 0(r29)
/* 80430C28  7C 60 DA 14 */	add r3, r0, r27
/* 80430C2C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80430C30  C0 63 00 08 */	lfs f3, 8(r3)
/* 80430C34  38 60 00 00 */	li r3, 0
/* 80430C38  C0 44 42 48 */	lfs f2, lit_468@l(r4)  /* 0x80644248@l */
/* 80430C3C  4B FD B6 C5 */	bl Matrix_translate
/* 80430C40  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80430C44  38 60 00 01 */	li r3, 1
/* 80430C48  C0 24 42 C4 */	lfs f1, lit_793@l(r4)  /* 0x806442C4@l */
/* 80430C4C  FC 40 08 90 */	fmr f2, f1
/* 80430C50  FC 60 08 90 */	fmr f3, f1
/* 80430C54  4B FD B7 99 */	bl Matrix_scale
/* 80430C58  83 79 02 D0 */	lwz r27, 0x2d0(r25)
/* 80430C5C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80430C60  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80430C64  38 7B 00 08 */	addi r3, r27, 8
/* 80430C68  90 79 02 D0 */	stw r3, 0x2d0(r25)
/* 80430C6C  90 1B 00 00 */	stw r0, 0(r27)
/* 80430C70  80 7D 00 00 */	lwz r3, 0(r29)
/* 80430C74  4B FD C7 61 */	bl _Matrix_to_Mtx_new
/* 80430C78  1C BE 05 58 */	mulli r5, r30, 0x558
/* 80430C7C  3C 80 80 43 */	lis r4, kusa_before_disp@ha /* 0x80430A58@ha */
/* 80430C80  90 7B 00 04 */	stw r3, 4(r27)
/* 80430C84  7F A3 EB 78 */	mr r3, r29
/* 80430C88  38 C4 0A 58 */	addi r6, r4, kusa_before_disp@l /* 0x80430A58@l */
/* 80430C8C  3C 85 00 01 */	addis r4, r5, 1
/* 80430C90  38 84 FC B8 */	addi r4, r4, -840
/* 80430C94  7F E5 FB 78 */	mr r5, r31
/* 80430C98  7C 9C 22 14 */	add r4, r28, r4
/* 80430C9C  38 E0 00 00 */	li r7, 0
/* 80430CA0  7C 88 23 78 */	mr r8, r4
/* 80430CA4  4B F4 0A 95 */	bl cKF_Si3_draw_R_SV
lbl_80430CA8:
/* 80430CA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80430CAC  4B C6 A2 65 */	bl func_8009AF10
/* 80430CB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80430CB4  7C 08 03 A6 */	mtlr r0
/* 80430CB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80430CBC  4E 80 00 20 */	blr 
