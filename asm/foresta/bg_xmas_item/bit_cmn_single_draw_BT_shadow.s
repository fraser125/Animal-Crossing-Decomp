lbl_804CA578:
/* 804CA578  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CA57C  7C 08 02 A6 */	mflr r0
/* 804CA580  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CA584  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804CA588  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804CA58C  39 61 00 30 */	addi r11, r1, 0x30
/* 804CA590  4B BD 09 35 */	bl func_8009AEC4
/* 804CA594  7C BE 2B 79 */	or. r30, r5, r5
/* 804CA598  FF E0 08 90 */	fmr f31, f1
/* 804CA59C  7C 7F 1B 78 */	mr r31, r3
/* 804CA5A0  7C D9 33 78 */	mr r25, r6
/* 804CA5A4  7C FA 3B 78 */	mr r26, r7
/* 804CA5A8  7D 1B 43 78 */	mr r27, r8
/* 804CA5AC  7D 3C 4B 78 */	mr r28, r9
/* 804CA5B0  7D 5D 53 78 */	mr r29, r10
/* 804CA5B4  41 82 00 C8 */	beq lbl_804CA67C
/* 804CA5B8  A8 1E 00 02 */	lha r0, 2(r30)
/* 804CA5BC  2C 00 00 7C */	cmpwi r0, 0x7c
/* 804CA5C0  41 82 00 BC */	beq lbl_804CA67C
/* 804CA5C4  7C 00 07 35 */	extsh. r0, r0
/* 804CA5C8  40 80 00 08 */	bge lbl_804CA5D0
/* 804CA5CC  48 00 00 B0 */	b lbl_804CA67C
lbl_804CA5D0:
/* 804CA5D0  4B F4 1C 05 */	bl Matrix_push
/* 804CA5D4  A8 DE 00 02 */	lha r6, 2(r30)
/* 804CA5D8  3C 60 81 1D */	lis r3, data_811D03B0@ha /* 0x811D03B0@ha */
/* 804CA5DC  88 BE 00 00 */	lbz r5, 0(r30)
/* 804CA5E0  38 83 03 B0 */	addi r4, r3, data_811D03B0@l /* 0x811D03B0@l */
/* 804CA5E4  38 00 00 00 */	li r0, 0
/* 804CA5E8  3C 60 80 6A */	lis r3, draw_part_table_a@ha /* 0x8069B434@ha */
/* 804CA5EC  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804CA5F0  54 C6 18 38 */	slwi r6, r6, 3
/* 804CA5F4  38 A3 B4 34 */	addi r5, r3, draw_part_table_a@l /* 0x8069B434@l */
/* 804CA5F8  38 60 00 00 */	li r3, 0
/* 804CA5FC  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804CA600  7F C5 30 2E */	lwzx r30, r5, r6
/* 804CA604  9B 84 00 42 */	stb r28, 0x42(r4)
/* 804CA608  C0 39 00 00 */	lfs f1, 0(r25)
/* 804CA60C  C0 59 00 04 */	lfs f2, 4(r25)
/* 804CA610  C0 79 00 08 */	lfs f3, 8(r25)
/* 804CA614  4B F4 1C ED */	bl Matrix_translate
/* 804CA618  A8 7A 00 02 */	lha r3, 2(r26)
/* 804CA61C  38 80 00 01 */	li r4, 1
/* 804CA620  4B F4 20 3D */	bl Matrix_RotateY
/* 804CA624  A8 7A 00 00 */	lha r3, 0(r26)
/* 804CA628  38 80 00 01 */	li r4, 1
/* 804CA62C  4B F4 1E 8D */	bl Matrix_RotateX
/* 804CA630  A8 7A 00 04 */	lha r3, 4(r26)
/* 804CA634  38 80 00 01 */	li r4, 1
/* 804CA638  4B F4 21 B9 */	bl Matrix_RotateZ
/* 804CA63C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804CA640  38 60 00 01 */	li r3, 1
/* 804CA644  C0 5B 00 04 */	lfs f2, 4(r27)
/* 804CA648  C0 7B 00 08 */	lfs f3, 8(r27)
/* 804CA64C  4B F4 1D A1 */	bl Matrix_scale
/* 804CA650  3C 60 81 1D */	lis r3, data_811D03B0@ha /* 0x811D03B0@ha */
/* 804CA654  38 63 03 B0 */	addi r3, r3, data_811D03B0@l /* 0x811D03B0@l */
/* 804CA658  4B F4 1B D5 */	bl Matrix_get
/* 804CA65C  3C 60 81 1D */	lis r3, data_811D03B0@ha /* 0x811D03B0@ha */
/* 804CA660  FC 20 F8 90 */	fmr f1, f31
/* 804CA664  38 A3 03 B0 */	addi r5, r3, data_811D03B0@l /* 0x811D03B0@l */
/* 804CA668  80 7F 00 00 */	lwz r3, 0(r31)
/* 804CA66C  7F C4 F3 78 */	mr r4, r30
/* 804CA670  7F A6 EB 78 */	mr r6, r29
/* 804CA674  4B FF FD F1 */	bl bit_cmn_single_draw_item_shadow
/* 804CA678  4B F4 1B 9D */	bl Matrix_pull
lbl_804CA67C:
/* 804CA67C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804CA680  39 61 00 30 */	addi r11, r1, 0x30
/* 804CA684  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804CA688  4B BD 08 89 */	bl func_8009AF10
/* 804CA68C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CA690  7C 08 03 A6 */	mtlr r0
/* 804CA694  38 21 00 40 */	addi r1, r1, 0x40
/* 804CA698  4E 80 00 20 */	blr 
