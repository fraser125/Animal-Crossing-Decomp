lbl_8048D9A8:
/* 8048D9A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048D9AC  7C 08 02 A6 */	mflr r0
/* 8048D9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048D9B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D9B8  4B C0 D5 1D */	bl func_8009AED4
/* 8048D9BC  7C 7D 1B 78 */	mr r29, r3
/* 8048D9C0  7C BE 2B 78 */	mr r30, r5
/* 8048D9C4  7F FD 20 51 */	subf. r31, r29, r4
/* 8048D9C8  40 80 00 0C */	bge lbl_8048D9D4
/* 8048D9CC  7C 9D 23 78 */	mr r29, r4
/* 8048D9D0  7F FF 00 D0 */	neg r31, r31
lbl_8048D9D4:
/* 8048D9D4  4B BC F3 21 */	bl fqrand
/* 8048D9D8  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 8048D9DC  3C 00 43 30 */	lis r0, 0x4330
/* 8048D9E0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8048D9E4  3C 80 80 64 */	lis r4, lit_504@ha /* 0x80644C2C@ha */
/* 8048D9E8  C8 44 4C 2C */	lfd f2, lit_504@l(r4)  /* 0x80644C2C@l */
/* 8048D9EC  90 01 00 08 */	stw r0, 8(r1)
/* 8048D9F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048D9F4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048D9F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8048D9FC  4B C0 D3 A9 */	bl func_8009ADA4
/* 8048DA00  2C 1E 00 01 */	cmpwi r30, 1
/* 8048DA04  40 82 00 10 */	bne lbl_8048DA14
/* 8048DA08  38 00 00 0A */	li r0, 0xa
/* 8048DA0C  7C 03 03 96 */	divwu r0, r3, r0
/* 8048DA10  1C 60 00 0A */	mulli r3, r0, 0xa
lbl_8048DA14:
/* 8048DA14  7C 63 EA 14 */	add r3, r3, r29
/* 8048DA18  39 61 00 20 */	addi r11, r1, 0x20
/* 8048DA1C  4B C0 D5 05 */	bl func_8009AF20
/* 8048DA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048DA24  7C 08 03 A6 */	mtlr r0
/* 8048DA28  38 21 00 20 */	addi r1, r1, 0x20
/* 8048DA2C  4E 80 00 20 */	blr 
