lbl_805A2130:
/* 805A2130  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A2134  7C 08 02 A6 */	mflr r0
/* 805A2138  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A213C  39 61 00 28 */	addi r11, r1, 0x28
/* 805A2140  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 805A2144  4B AF 8D 85 */	bl func_8009AEC8
/* 805A2148  3C A0 81 1F */	lis r5, data_811F2870@ha /* 0x811F2870@ha */
/* 805A214C  7C 7A 1B 78 */	mr r26, r3
/* 805A2150  38 65 28 70 */	addi r3, r5, data_811F2870@l /* 0x811F2870@l */
/* 805A2154  7C 9B 23 78 */	mr r27, r4
/* 805A2158  80 63 00 00 */	lwz r3, 0(r3)
/* 805A215C  3B 80 00 00 */	li r28, 0
/* 805A2160  3B C0 00 00 */	li r30, 0
/* 805A2164  3B E0 00 01 */	li r31, 1
/* 805A2168  3B A3 01 74 */	addi r29, r3, 0x174
lbl_805A216C:
/* 805A216C  80 1D 01 D0 */	lwz r0, 0x1d0(r29)
/* 805A2170  2C 00 00 01 */	cmpwi r0, 1
/* 805A2174  40 82 00 2C */	bne lbl_805A21A0
/* 805A2178  9B DD 02 43 */	stb r30, 0x243(r29)
/* 805A217C  7F 44 D3 78 */	mr r4, r26
/* 805A2180  38 7D 00 28 */	addi r3, r29, 0x28
/* 805A2184  4B E1 8E 51 */	bl search_position_distance
/* 805A2188  FF E0 08 90 */	fmr f31, f1
/* 805A218C  7F 63 DB 78 */	mr r3, r27
/* 805A2190  4B FF FF 81 */	bl aGYO_escape_distance
/* 805A2194  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 805A2198  40 80 00 08 */	bge lbl_805A21A0
/* 805A219C  9B FD 02 43 */	stb r31, 0x243(r29)
lbl_805A21A0:
/* 805A21A0  3B 9C 00 01 */	addi r28, r28, 1
/* 805A21A4  3B BD 02 50 */	addi r29, r29, 0x250
/* 805A21A8  2C 1C 00 02 */	cmpwi r28, 2
/* 805A21AC  41 80 FF C0 */	blt lbl_805A216C
/* 805A21B0  39 61 00 28 */	addi r11, r1, 0x28
/* 805A21B4  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 805A21B8  4B AF 8D 5D */	bl func_8009AF14
/* 805A21BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A21C0  7C 08 03 A6 */	mtlr r0
/* 805A21C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805A21C8  4E 80 00 20 */	blr 
