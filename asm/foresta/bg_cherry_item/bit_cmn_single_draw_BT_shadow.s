lbl_804B42E4:
/* 804B42E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B42E8  7C 08 02 A6 */	mflr r0
/* 804B42EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B42F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804B42F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804B42F8  39 61 00 30 */	addi r11, r1, 0x30
/* 804B42FC  4B BE 6B C9 */	bl func_8009AEC4
/* 804B4300  7C BE 2B 79 */	or. r30, r5, r5
/* 804B4304  FF E0 08 90 */	fmr f31, f1
/* 804B4308  7C 7F 1B 78 */	mr r31, r3
/* 804B430C  7C D9 33 78 */	mr r25, r6
/* 804B4310  7C FA 3B 78 */	mr r26, r7
/* 804B4314  7D 1B 43 78 */	mr r27, r8
/* 804B4318  7D 3C 4B 78 */	mr r28, r9
/* 804B431C  7D 5D 53 78 */	mr r29, r10
/* 804B4320  41 82 00 C8 */	beq lbl_804B43E8
/* 804B4324  A8 1E 00 02 */	lha r0, 2(r30)
/* 804B4328  2C 00 00 7A */	cmpwi r0, 0x7a
/* 804B432C  41 82 00 BC */	beq lbl_804B43E8
/* 804B4330  7C 00 07 35 */	extsh. r0, r0
/* 804B4334  40 80 00 08 */	bge lbl_804B433C
/* 804B4338  48 00 00 B0 */	b lbl_804B43E8
lbl_804B433C:
/* 804B433C  4B F5 7E 99 */	bl Matrix_push
/* 804B4340  A8 DE 00 02 */	lha r6, 2(r30)
/* 804B4344  3C 60 81 1D */	lis r3, data_811CF5E0@ha /* 0x811CF5E0@ha */
/* 804B4348  88 BE 00 00 */	lbz r5, 0(r30)
/* 804B434C  38 83 F5 E0 */	addi r4, r3, data_811CF5E0@l /* 0x811CF5E0@l */
/* 804B4350  38 00 00 00 */	li r0, 0
/* 804B4354  3C 60 80 69 */	lis r3, draw_part_table_a@ha /* 0x80692314@ha */
/* 804B4358  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804B435C  54 C6 18 38 */	slwi r6, r6, 3
/* 804B4360  38 A3 23 14 */	addi r5, r3, draw_part_table_a@l /* 0x80692314@l */
/* 804B4364  38 60 00 00 */	li r3, 0
/* 804B4368  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804B436C  7F C5 30 2E */	lwzx r30, r5, r6
/* 804B4370  9B 84 00 42 */	stb r28, 0x42(r4)
/* 804B4374  C0 39 00 00 */	lfs f1, 0(r25)
/* 804B4378  C0 59 00 04 */	lfs f2, 4(r25)
/* 804B437C  C0 79 00 08 */	lfs f3, 8(r25)
/* 804B4380  4B F5 7F 81 */	bl Matrix_translate
/* 804B4384  A8 7A 00 02 */	lha r3, 2(r26)
/* 804B4388  38 80 00 01 */	li r4, 1
/* 804B438C  4B F5 82 D1 */	bl Matrix_RotateY
/* 804B4390  A8 7A 00 00 */	lha r3, 0(r26)
/* 804B4394  38 80 00 01 */	li r4, 1
/* 804B4398  4B F5 81 21 */	bl Matrix_RotateX
/* 804B439C  A8 7A 00 04 */	lha r3, 4(r26)
/* 804B43A0  38 80 00 01 */	li r4, 1
/* 804B43A4  4B F5 84 4D */	bl Matrix_RotateZ
/* 804B43A8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804B43AC  38 60 00 01 */	li r3, 1
/* 804B43B0  C0 5B 00 04 */	lfs f2, 4(r27)
/* 804B43B4  C0 7B 00 08 */	lfs f3, 8(r27)
/* 804B43B8  4B F5 80 35 */	bl Matrix_scale
/* 804B43BC  3C 60 81 1D */	lis r3, data_811CF5E0@ha /* 0x811CF5E0@ha */
/* 804B43C0  38 63 F5 E0 */	addi r3, r3, data_811CF5E0@l /* 0x811CF5E0@l */
/* 804B43C4  4B F5 7E 69 */	bl Matrix_get
/* 804B43C8  3C 60 81 1D */	lis r3, data_811CF5E0@ha /* 0x811CF5E0@ha */
/* 804B43CC  FC 20 F8 90 */	fmr f1, f31
/* 804B43D0  38 A3 F5 E0 */	addi r5, r3, data_811CF5E0@l /* 0x811CF5E0@l */
/* 804B43D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 804B43D8  7F C4 F3 78 */	mr r4, r30
/* 804B43DC  7F A6 EB 78 */	mr r6, r29
/* 804B43E0  4B FF FD F1 */	bl bit_cmn_single_draw_item_shadow
/* 804B43E4  4B F5 7E 31 */	bl Matrix_pull
lbl_804B43E8:
/* 804B43E8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804B43EC  39 61 00 30 */	addi r11, r1, 0x30
/* 804B43F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804B43F4  4B BE 6B 1D */	bl func_8009AF10
/* 804B43F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B43FC  7C 08 03 A6 */	mtlr r0
/* 804B4400  38 21 00 40 */	addi r1, r1, 0x40
/* 804B4404  4E 80 00 20 */	blr 
