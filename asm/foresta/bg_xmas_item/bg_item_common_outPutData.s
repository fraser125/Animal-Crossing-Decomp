lbl_804CB7CC:
/* 804CB7CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CB7D0  7C 08 02 A6 */	mflr r0
/* 804CB7D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CB7D8  39 61 00 20 */	addi r11, r1, 0x20
/* 804CB7DC  4B BC F6 F9 */	bl func_8009AED4
/* 804CB7E0  C0 27 00 00 */	lfs f1, 0(r7)
/* 804CB7E4  7C 9D 23 78 */	mr r29, r4
/* 804CB7E8  C0 47 00 04 */	lfs f2, 4(r7)
/* 804CB7EC  7C BE 2B 78 */	mr r30, r5
/* 804CB7F0  C0 67 00 08 */	lfs f3, 8(r7)
/* 804CB7F4  7C DF 33 78 */	mr r31, r6
/* 804CB7F8  38 60 00 00 */	li r3, 0
/* 804CB7FC  4B F4 0B 05 */	bl Matrix_translate
/* 804CB800  3C 80 80 64 */	lis r4, lit_1546@ha /* 0x80646234@ha */
/* 804CB804  38 60 00 01 */	li r3, 1
/* 804CB808  C0 24 62 34 */	lfs f1, lit_1546@l(r4)  /* 0x80646234@l */
/* 804CB80C  FC 40 08 90 */	fmr f2, f1
/* 804CB810  FC 60 08 90 */	fmr f3, f1
/* 804CB814  4B F4 0B D9 */	bl Matrix_scale
/* 804CB818  7F A3 EB 78 */	mr r3, r29
/* 804CB81C  4B F4 0A 11 */	bl Matrix_get
/* 804CB820  B3 DD 00 44 */	sth r30, 0x44(r29)
/* 804CB824  39 61 00 20 */	addi r11, r1, 0x20
/* 804CB828  9B FD 00 47 */	stb r31, 0x47(r29)
/* 804CB82C  4B BC F6 F5 */	bl func_8009AF20
/* 804CB830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CB834  7C 08 03 A6 */	mtlr r0
/* 804CB838  38 21 00 20 */	addi r1, r1, 0x20
/* 804CB83C  4E 80 00 20 */	blr 
