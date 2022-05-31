lbl_804BB668:
/* 804BB668  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BB66C  7C 08 02 A6 */	mflr r0
/* 804BB670  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BB674  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804BB678  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804BB67C  39 61 00 30 */	addi r11, r1, 0x30
/* 804BB680  4B BD F8 45 */	bl func_8009AEC4
/* 804BB684  7C BE 2B 79 */	or. r30, r5, r5
/* 804BB688  FF E0 08 90 */	fmr f31, f1
/* 804BB68C  7C 7F 1B 78 */	mr r31, r3
/* 804BB690  7C D9 33 78 */	mr r25, r6
/* 804BB694  7C FA 3B 78 */	mr r26, r7
/* 804BB698  7D 1B 43 78 */	mr r27, r8
/* 804BB69C  7D 3C 4B 78 */	mr r28, r9
/* 804BB6A0  7D 5D 53 78 */	mr r29, r10
/* 804BB6A4  41 82 00 C8 */	beq lbl_804BB76C
/* 804BB6A8  A8 1E 00 02 */	lha r0, 2(r30)
/* 804BB6AC  2C 00 00 7A */	cmpwi r0, 0x7a
/* 804BB6B0  41 82 00 BC */	beq lbl_804BB76C
/* 804BB6B4  7C 00 07 35 */	extsh. r0, r0
/* 804BB6B8  40 80 00 08 */	bge lbl_804BB6C0
/* 804BB6BC  48 00 00 B0 */	b lbl_804BB76C
lbl_804BB6C0:
/* 804BB6C0  4B F5 0B 15 */	bl Matrix_push
/* 804BB6C4  A8 DE 00 02 */	lha r6, 2(r30)
/* 804BB6C8  3C 60 81 1D */	lis r3, data_811CFA70@ha /* 0x811CFA70@ha */
/* 804BB6CC  88 BE 00 00 */	lbz r5, 0(r30)
/* 804BB6D0  38 83 FA 70 */	addi r4, r3, data_811CFA70@l /* 0x811CFA70@l */
/* 804BB6D4  38 00 00 00 */	li r0, 0
/* 804BB6D8  3C 60 80 69 */	lis r3, draw_part_table_a@ha /* 0x80695274@ha */
/* 804BB6DC  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804BB6E0  54 C6 18 38 */	slwi r6, r6, 3
/* 804BB6E4  38 A3 52 74 */	addi r5, r3, draw_part_table_a@l /* 0x80695274@l */
/* 804BB6E8  38 60 00 00 */	li r3, 0
/* 804BB6EC  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804BB6F0  7F C5 30 2E */	lwzx r30, r5, r6
/* 804BB6F4  9B 84 00 42 */	stb r28, 0x42(r4)
/* 804BB6F8  C0 39 00 00 */	lfs f1, 0(r25)
/* 804BB6FC  C0 59 00 04 */	lfs f2, 4(r25)
/* 804BB700  C0 79 00 08 */	lfs f3, 8(r25)
/* 804BB704  4B F5 0B FD */	bl Matrix_translate
/* 804BB708  A8 7A 00 02 */	lha r3, 2(r26)
/* 804BB70C  38 80 00 01 */	li r4, 1
/* 804BB710  4B F5 0F 4D */	bl Matrix_RotateY
/* 804BB714  A8 7A 00 00 */	lha r3, 0(r26)
/* 804BB718  38 80 00 01 */	li r4, 1
/* 804BB71C  4B F5 0D 9D */	bl Matrix_RotateX
/* 804BB720  A8 7A 00 04 */	lha r3, 4(r26)
/* 804BB724  38 80 00 01 */	li r4, 1
/* 804BB728  4B F5 10 C9 */	bl Matrix_RotateZ
/* 804BB72C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804BB730  38 60 00 01 */	li r3, 1
/* 804BB734  C0 5B 00 04 */	lfs f2, 4(r27)
/* 804BB738  C0 7B 00 08 */	lfs f3, 8(r27)
/* 804BB73C  4B F5 0C B1 */	bl Matrix_scale
/* 804BB740  3C 60 81 1D */	lis r3, data_811CFA70@ha /* 0x811CFA70@ha */
/* 804BB744  38 63 FA 70 */	addi r3, r3, data_811CFA70@l /* 0x811CFA70@l */
/* 804BB748  4B F5 0A E5 */	bl Matrix_get
/* 804BB74C  3C 60 81 1D */	lis r3, data_811CFA70@ha /* 0x811CFA70@ha */
/* 804BB750  FC 20 F8 90 */	fmr f1, f31
/* 804BB754  38 A3 FA 70 */	addi r5, r3, data_811CFA70@l /* 0x811CFA70@l */
/* 804BB758  80 7F 00 00 */	lwz r3, 0(r31)
/* 804BB75C  7F C4 F3 78 */	mr r4, r30
/* 804BB760  7F A6 EB 78 */	mr r6, r29
/* 804BB764  4B FF FD F1 */	bl bit_cmn_single_draw_item_shadow
/* 804BB768  4B F5 0A AD */	bl Matrix_pull
lbl_804BB76C:
/* 804BB76C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804BB770  39 61 00 30 */	addi r11, r1, 0x30
/* 804BB774  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804BB778  4B BD F7 99 */	bl func_8009AF10
/* 804BB77C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BB780  7C 08 03 A6 */	mtlr r0
/* 804BB784  38 21 00 40 */	addi r1, r1, 0x40
/* 804BB788  4E 80 00 20 */	blr 
