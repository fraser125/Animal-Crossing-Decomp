lbl_804C43B4:
/* 804C43B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C43B8  7C 08 02 A6 */	mflr r0
/* 804C43BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C43C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804C43C4  4B BD 6B 11 */	bl func_8009AED4
/* 804C43C8  C0 27 00 00 */	lfs f1, 0(r7)
/* 804C43CC  7C 9D 23 78 */	mr r29, r4
/* 804C43D0  C0 47 00 04 */	lfs f2, 4(r7)
/* 804C43D4  7C BE 2B 78 */	mr r30, r5
/* 804C43D8  C0 67 00 08 */	lfs f3, 8(r7)
/* 804C43DC  7C DF 33 78 */	mr r31, r6
/* 804C43E0  38 60 00 00 */	li r3, 0
/* 804C43E4  4B F4 7F 1D */	bl Matrix_translate
/* 804C43E8  3C 80 80 64 */	lis r4, lit_1546@ha /* 0x80646194@ha */
/* 804C43EC  38 60 00 01 */	li r3, 1
/* 804C43F0  C0 24 61 94 */	lfs f1, lit_1546@l(r4)  /* 0x80646194@l */
/* 804C43F4  FC 40 08 90 */	fmr f2, f1
/* 804C43F8  FC 60 08 90 */	fmr f3, f1
/* 804C43FC  4B F4 7F F1 */	bl Matrix_scale
/* 804C4400  7F A3 EB 78 */	mr r3, r29
/* 804C4404  4B F4 7E 29 */	bl Matrix_get
/* 804C4408  B3 DD 00 44 */	sth r30, 0x44(r29)
/* 804C440C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C4410  9B FD 00 47 */	stb r31, 0x47(r29)
/* 804C4414  4B BD 6B 0D */	bl func_8009AF20
/* 804C4418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C441C  7C 08 03 A6 */	mtlr r0
/* 804C4420  38 21 00 20 */	addi r1, r1, 0x20
/* 804C4424  4E 80 00 20 */	blr 
