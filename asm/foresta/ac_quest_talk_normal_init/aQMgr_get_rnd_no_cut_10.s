lbl_80492A2C:
/* 80492A2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80492A30  7C 08 02 A6 */	mflr r0
/* 80492A34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492A38  39 61 00 20 */	addi r11, r1, 0x20
/* 80492A3C  4B C0 84 99 */	bl func_8009AED4
/* 80492A40  7C 7D 1B 78 */	mr r29, r3
/* 80492A44  7C BE 2B 78 */	mr r30, r5
/* 80492A48  7F FD 20 51 */	subf. r31, r29, r4
/* 80492A4C  40 80 00 0C */	bge lbl_80492A58
/* 80492A50  7C 9D 23 78 */	mr r29, r4
/* 80492A54  7F FF 00 D0 */	neg r31, r31
lbl_80492A58:
/* 80492A58  4B BC A2 9D */	bl fqrand
/* 80492A5C  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80492A60  3C 00 43 30 */	lis r0, 0x4330
/* 80492A64  90 61 00 0C */	stw r3, 0xc(r1)
/* 80492A68  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 80492A6C  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 80492A70  90 01 00 08 */	stw r0, 8(r1)
/* 80492A74  C8 01 00 08 */	lfd f0, 8(r1)
/* 80492A78  EC 00 10 28 */	fsubs f0, f0, f2
/* 80492A7C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80492A80  4B C0 83 25 */	bl func_8009ADA4
/* 80492A84  2C 1E 00 01 */	cmpwi r30, 1
/* 80492A88  40 82 00 10 */	bne lbl_80492A98
/* 80492A8C  38 00 00 0A */	li r0, 0xa
/* 80492A90  7C 03 03 96 */	divwu r0, r3, r0
/* 80492A94  1C 60 00 0A */	mulli r3, r0, 0xa
lbl_80492A98:
/* 80492A98  7C 63 EA 14 */	add r3, r3, r29
/* 80492A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80492AA0  4B C0 84 81 */	bl func_8009AF20
/* 80492AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80492AA8  7C 08 03 A6 */	mtlr r0
/* 80492AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80492AB0  4E 80 00 20 */	blr 
