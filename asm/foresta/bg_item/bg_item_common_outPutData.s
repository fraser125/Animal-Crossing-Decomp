lbl_804BC8BC:
/* 804BC8BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BC8C0  7C 08 02 A6 */	mflr r0
/* 804BC8C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BC8C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC8CC  4B BD E6 09 */	bl func_8009AED4
/* 804BC8D0  C0 27 00 00 */	lfs f1, 0(r7)
/* 804BC8D4  7C 9D 23 78 */	mr r29, r4
/* 804BC8D8  C0 47 00 04 */	lfs f2, 4(r7)
/* 804BC8DC  7C BE 2B 78 */	mr r30, r5
/* 804BC8E0  C0 67 00 08 */	lfs f3, 8(r7)
/* 804BC8E4  7C DF 33 78 */	mr r31, r6
/* 804BC8E8  38 60 00 00 */	li r3, 0
/* 804BC8EC  4B F4 FA 15 */	bl Matrix_translate
/* 804BC8F0  3C 80 80 64 */	lis r4, lit_1546@ha /* 0x806460E4@ha */
/* 804BC8F4  38 60 00 01 */	li r3, 1
/* 804BC8F8  C0 24 60 E4 */	lfs f1, lit_1546@l(r4)  /* 0x806460E4@l */
/* 804BC8FC  FC 40 08 90 */	fmr f2, f1
/* 804BC900  FC 60 08 90 */	fmr f3, f1
/* 804BC904  4B F4 FA E9 */	bl Matrix_scale
/* 804BC908  7F A3 EB 78 */	mr r3, r29
/* 804BC90C  4B F4 F9 21 */	bl Matrix_get
/* 804BC910  B3 DD 00 44 */	sth r30, 0x44(r29)
/* 804BC914  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC918  9B FD 00 47 */	stb r31, 0x47(r29)
/* 804BC91C  4B BD E6 05 */	bl func_8009AF20
/* 804BC920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BC924  7C 08 03 A6 */	mtlr r0
/* 804BC928  38 21 00 20 */	addi r1, r1, 0x20
/* 804BC92C  4E 80 00 20 */	blr 
