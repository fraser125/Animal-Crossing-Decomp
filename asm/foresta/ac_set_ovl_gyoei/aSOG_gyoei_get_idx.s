lbl_80499868:
/* 80499868  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8049986C  7C 08 02 A6 */	mflr r0
/* 80499870  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80499874  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80499878  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8049987C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80499880  4B C0 16 4D */	bl func_8009AECC
/* 80499884  7C 7B 1B 78 */	mr r27, r3
/* 80499888  7C 9C 23 78 */	mr r28, r4
/* 8049988C  7C BD 2B 78 */	mr r29, r5
/* 80499890  38 61 00 08 */	addi r3, r1, 8
/* 80499894  3B C0 FF FF */	li r30, -1
/* 80499898  38 80 00 A0 */	li r4, 0xa0
/* 8049989C  4B BC 37 CD */	bl bzero
/* 804998A0  4B F0 88 51 */	bl mFAs_GetFieldRank
/* 804998A4  2C 03 00 00 */	cmpwi r3, 0
/* 804998A8  41 80 00 0C */	blt lbl_804998B4
/* 804998AC  2C 03 00 06 */	cmpwi r3, 6
/* 804998B0  40 81 00 1C */	ble lbl_804998CC
lbl_804998B4:
/* 804998B4  2C 03 00 00 */	cmpwi r3, 0
/* 804998B8  40 80 00 08 */	bge lbl_804998C0
/* 804998BC  38 60 00 00 */	li r3, 0
lbl_804998C0:
/* 804998C0  2C 03 00 06 */	cmpwi r3, 6
/* 804998C4  40 81 00 08 */	ble lbl_804998CC
/* 804998C8  38 60 00 06 */	li r3, 6
lbl_804998CC:
/* 804998CC  3C 80 80 69 */	lis r4, env_rate_table@ha /* 0x8068CC08@ha */
/* 804998D0  54 60 10 3A */	slwi r0, r3, 2
/* 804998D4  38 64 CC 08 */	addi r3, r4, env_rate_table@l /* 0x8068CC08@l */
/* 804998D8  3B E0 00 00 */	li r31, 0
/* 804998DC  7F E3 04 2E */	lfsx f31, r3, r0
/* 804998E0  48 00 00 34 */	b lbl_80499914
lbl_804998E4:
/* 804998E4  FC 20 F8 90 */	fmr f1, f31
/* 804998E8  7F 63 DB 78 */	mr r3, r27
/* 804998EC  7F A5 EB 78 */	mr r5, r29
/* 804998F0  7F 86 E3 78 */	mr r6, r28
/* 804998F4  38 81 00 08 */	addi r4, r1, 8
/* 804998F8  4B FF FE 3D */	bl aSOG_gyoei_get_idx_sub
/* 804998FC  7C 7E 1B 78 */	mr r30, r3
/* 80499900  2C 1E FF FF */	cmpwi r30, -1
/* 80499904  41 82 00 18 */	beq lbl_8049991C
/* 80499908  2C 1E 00 28 */	cmpwi r30, 0x28
/* 8049990C  40 82 00 10 */	bne lbl_8049991C
/* 80499910  3B FF 00 01 */	addi r31, r31, 1
lbl_80499914:
/* 80499914  7C 1F E0 00 */	cmpw r31, r28
/* 80499918  41 80 FF CC */	blt lbl_804998E4
lbl_8049991C:
/* 8049991C  7F C3 F3 78 */	mr r3, r30
/* 80499920  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80499924  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80499928  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8049992C  4B C0 15 ED */	bl func_8009AF18
/* 80499930  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80499934  7C 08 03 A6 */	mtlr r0
/* 80499938  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8049993C  4E 80 00 20 */	blr 