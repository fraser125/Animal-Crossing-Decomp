lbl_805A21CC:
/* 805A21CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A21D0  7C 08 02 A6 */	mflr r0
/* 805A21D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A21D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805A21DC  4B AF 8C F5 */	bl func_8009AED0
/* 805A21E0  3C A0 81 1F */	lis r5, data_811F2870@ha /* 0x811F2870@ha */
/* 805A21E4  7C 7C 1B 78 */	mr r28, r3
/* 805A21E8  38 65 28 70 */	addi r3, r5, data_811F2870@l /* 0x811F2870@l */
/* 805A21EC  7C 9F 07 34 */	extsh r31, r4
/* 805A21F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805A21F4  3B A0 00 00 */	li r29, 0
/* 805A21F8  3B C3 01 74 */	addi r30, r3, 0x174
lbl_805A21FC:
/* 805A21FC  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 805A2200  2C 00 00 01 */	cmpwi r0, 1
/* 805A2204  40 82 00 64 */	bne lbl_805A2268
/* 805A2208  88 1E 02 43 */	lbz r0, 0x243(r30)
/* 805A220C  28 00 00 01 */	cmplwi r0, 1
/* 805A2210  41 82 00 58 */	beq lbl_805A2268
/* 805A2214  7F 84 E3 78 */	mr r4, r28
/* 805A2218  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A221C  4B E1 8D B9 */	bl search_position_distance
/* 805A2220  2C 1F 00 00 */	cmpwi r31, 0
/* 805A2224  41 82 00 14 */	beq lbl_805A2238
/* 805A2228  41 80 00 28 */	blt lbl_805A2250
/* 805A222C  2C 1F 00 04 */	cmpwi r31, 4
/* 805A2230  40 80 00 20 */	bge lbl_805A2250
/* 805A2234  48 00 00 10 */	b lbl_805A2244
lbl_805A2238:
/* 805A2238  3C 60 80 65 */	lis r3, lit_566@ha /* 0x8064A378@ha */
/* 805A223C  C0 03 A3 78 */	lfs f0, lit_566@l(r3)  /* 0x8064A378@l */
/* 805A2240  48 00 00 18 */	b lbl_805A2258
lbl_805A2244:
/* 805A2244  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064A37C@ha */
/* 805A2248  C0 03 A3 7C */	lfs f0, lit_567@l(r3)  /* 0x8064A37C@l */
/* 805A224C  48 00 00 0C */	b lbl_805A2258
lbl_805A2250:
/* 805A2250  3C 60 80 65 */	lis r3, lit_568@ha /* 0x8064A380@ha */
/* 805A2254  C0 03 A3 80 */	lfs f0, lit_568@l(r3)  /* 0x8064A380@l */
lbl_805A2258:
/* 805A2258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A225C  40 80 00 0C */	bge lbl_805A2268
/* 805A2260  38 00 00 01 */	li r0, 1
/* 805A2264  98 1E 02 43 */	stb r0, 0x243(r30)
lbl_805A2268:
/* 805A2268  3B BD 00 01 */	addi r29, r29, 1
/* 805A226C  3B DE 02 50 */	addi r30, r30, 0x250
/* 805A2270  2C 1D 00 02 */	cmpwi r29, 2
/* 805A2274  41 80 FF 88 */	blt lbl_805A21FC
/* 805A2278  39 61 00 20 */	addi r11, r1, 0x20
/* 805A227C  4B AF 8C A1 */	bl func_8009AF1C
/* 805A2280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A2284  7C 08 03 A6 */	mtlr r0
/* 805A2288  38 21 00 20 */	addi r1, r1, 0x20
/* 805A228C  4E 80 00 20 */	blr 
