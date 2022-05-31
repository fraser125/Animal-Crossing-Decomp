lbl_804C3160:
/* 804C3160  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C3164  7C 08 02 A6 */	mflr r0
/* 804C3168  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C316C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804C3170  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804C3174  39 61 00 30 */	addi r11, r1, 0x30
/* 804C3178  4B BD 7D 4D */	bl func_8009AEC4
/* 804C317C  7C BE 2B 79 */	or. r30, r5, r5
/* 804C3180  FF E0 08 90 */	fmr f31, f1
/* 804C3184  7C 7F 1B 78 */	mr r31, r3
/* 804C3188  7C D9 33 78 */	mr r25, r6
/* 804C318C  7C FA 3B 78 */	mr r26, r7
/* 804C3190  7D 1B 43 78 */	mr r27, r8
/* 804C3194  7D 3C 4B 78 */	mr r28, r9
/* 804C3198  7D 5D 53 78 */	mr r29, r10
/* 804C319C  41 82 00 C8 */	beq lbl_804C3264
/* 804C31A0  A8 1E 00 02 */	lha r0, 2(r30)
/* 804C31A4  2C 00 00 7A */	cmpwi r0, 0x7a
/* 804C31A8  41 82 00 BC */	beq lbl_804C3264
/* 804C31AC  7C 00 07 35 */	extsh. r0, r0
/* 804C31B0  40 80 00 08 */	bge lbl_804C31B8
/* 804C31B4  48 00 00 B0 */	b lbl_804C3264
lbl_804C31B8:
/* 804C31B8  4B F4 90 1D */	bl Matrix_push
/* 804C31BC  A8 DE 00 02 */	lha r6, 2(r30)
/* 804C31C0  3C 60 81 1D */	lis r3, data_811CFF20@ha /* 0x811CFF20@ha */
/* 804C31C4  88 BE 00 00 */	lbz r5, 0(r30)
/* 804C31C8  38 83 FF 20 */	addi r4, r3, data_811CFF20@l /* 0x811CFF20@l */
/* 804C31CC  38 00 00 00 */	li r0, 0
/* 804C31D0  3C 60 80 6A */	lis r3, draw_part_table_a@ha /* 0x80698444@ha */
/* 804C31D4  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804C31D8  54 C6 18 38 */	slwi r6, r6, 3
/* 804C31DC  38 A3 84 44 */	addi r5, r3, draw_part_table_a@l /* 0x80698444@l */
/* 804C31E0  38 60 00 00 */	li r3, 0
/* 804C31E4  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804C31E8  7F C5 30 2E */	lwzx r30, r5, r6
/* 804C31EC  9B 84 00 42 */	stb r28, 0x42(r4)
/* 804C31F0  C0 39 00 00 */	lfs f1, 0(r25)
/* 804C31F4  C0 59 00 04 */	lfs f2, 4(r25)
/* 804C31F8  C0 79 00 08 */	lfs f3, 8(r25)
/* 804C31FC  4B F4 91 05 */	bl Matrix_translate
/* 804C3200  A8 7A 00 02 */	lha r3, 2(r26)
/* 804C3204  38 80 00 01 */	li r4, 1
/* 804C3208  4B F4 94 55 */	bl Matrix_RotateY
/* 804C320C  A8 7A 00 00 */	lha r3, 0(r26)
/* 804C3210  38 80 00 01 */	li r4, 1
/* 804C3214  4B F4 92 A5 */	bl Matrix_RotateX
/* 804C3218  A8 7A 00 04 */	lha r3, 4(r26)
/* 804C321C  38 80 00 01 */	li r4, 1
/* 804C3220  4B F4 95 D1 */	bl Matrix_RotateZ
/* 804C3224  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804C3228  38 60 00 01 */	li r3, 1
/* 804C322C  C0 5B 00 04 */	lfs f2, 4(r27)
/* 804C3230  C0 7B 00 08 */	lfs f3, 8(r27)
/* 804C3234  4B F4 91 B9 */	bl Matrix_scale
/* 804C3238  3C 60 81 1D */	lis r3, data_811CFF20@ha /* 0x811CFF20@ha */
/* 804C323C  38 63 FF 20 */	addi r3, r3, data_811CFF20@l /* 0x811CFF20@l */
/* 804C3240  4B F4 8F ED */	bl Matrix_get
/* 804C3244  3C 60 81 1D */	lis r3, data_811CFF20@ha /* 0x811CFF20@ha */
/* 804C3248  FC 20 F8 90 */	fmr f1, f31
/* 804C324C  38 A3 FF 20 */	addi r5, r3, data_811CFF20@l /* 0x811CFF20@l */
/* 804C3250  80 7F 00 00 */	lwz r3, 0(r31)
/* 804C3254  7F C4 F3 78 */	mr r4, r30
/* 804C3258  7F A6 EB 78 */	mr r6, r29
/* 804C325C  4B FF FD F1 */	bl bit_cmn_single_draw_item_shadow
/* 804C3260  4B F4 8F B5 */	bl Matrix_pull
lbl_804C3264:
/* 804C3264  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804C3268  39 61 00 30 */	addi r11, r1, 0x30
/* 804C326C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804C3270  4B BD 7C A1 */	bl func_8009AF10
/* 804C3274  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C3278  7C 08 03 A6 */	mtlr r0
/* 804C327C  38 21 00 40 */	addi r1, r1, 0x40
/* 804C3280  4E 80 00 20 */	blr 
