lbl_80444798:
/* 80444798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044479C  7C 08 02 A6 */	mflr r0
/* 804447A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804447A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804447A8  4B C5 67 21 */	bl func_8009AEC8
/* 804447AC  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 804447B0  7C 7A 1B 78 */	mr r26, r3
/* 804447B4  7C 9B 23 78 */	mr r27, r4
/* 804447B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804447BC  3B DA 00 38 */	addi r30, r26, 0x38
/* 804447C0  41 82 00 0C */	beq lbl_804447CC
/* 804447C4  3B BE 00 70 */	addi r29, r30, 0x70
/* 804447C8  48 00 00 08 */	b lbl_804447D0
lbl_804447CC:
/* 804447CC  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_804447D0:
/* 804447D0  83 9B 00 00 */	lwz r28, 0(r27)
/* 804447D4  38 60 00 00 */	li r3, 0
/* 804447D8  C0 3A 05 A0 */	lfs f1, 0x5a0(r26)
/* 804447DC  C0 5A 05 A4 */	lfs f2, 0x5a4(r26)
/* 804447E0  C0 7A 05 A8 */	lfs f3, 0x5a8(r26)
/* 804447E4  4B FC 7B 1D */	bl Matrix_translate
/* 804447E8  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 804447EC  38 C0 00 01 */	li r6, 1
/* 804447F0  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 804447F4  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 804447F8  4B FC 81 9D */	bl Matrix_rotateXYZ
/* 804447FC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80444800  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 80444804  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 80444808  38 60 00 01 */	li r3, 1
/* 8044480C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80444810  FC 40 08 90 */	fmr f2, f1
/* 80444814  4B FC 7A ED */	bl Matrix_translate
/* 80444818  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8044481C  38 60 00 01 */	li r3, 1
/* 80444820  FC 40 08 90 */	fmr f2, f1
/* 80444824  FC 60 08 90 */	fmr f3, f1
/* 80444828  4B FC 7B C5 */	bl Matrix_scale
/* 8044482C  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 80444830  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80444834  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80444838  38 7F 00 08 */	addi r3, r31, 8
/* 8044483C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80444840  90 1F 00 00 */	stw r0, 0(r31)
/* 80444844  80 7B 00 00 */	lwz r3, 0(r27)
/* 80444848  4B FC 8B 8D */	bl _Matrix_to_Mtx_new
/* 8044484C  3C 80 80 44 */	lis r4, mfish_seafish_before_disp@ha /* 0x804444F4@ha */
/* 80444850  90 7F 00 04 */	stw r3, 4(r31)
/* 80444854  38 C4 44 F4 */	addi r6, r4, mfish_seafish_before_disp@l /* 0x804444F4@l */
/* 80444858  7F 63 DB 78 */	mr r3, r27
/* 8044485C  7F C4 F3 78 */	mr r4, r30
/* 80444860  7F A5 EB 78 */	mr r5, r29
/* 80444864  7F 48 D3 78 */	mr r8, r26
/* 80444868  38 E0 00 00 */	li r7, 0
/* 8044486C  4B F2 CE CD */	bl cKF_Si3_draw_R_SV
/* 80444870  39 61 00 20 */	addi r11, r1, 0x20
/* 80444874  4B C5 66 A1 */	bl func_8009AF14
/* 80444878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044487C  7C 08 03 A6 */	mtlr r0
/* 80444880  38 21 00 20 */	addi r1, r1, 0x20
/* 80444884  4E 80 00 20 */	blr 
