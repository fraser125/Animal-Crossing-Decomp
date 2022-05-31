lbl_8049AF34:
/* 8049AF34  1C E4 00 30 */	mulli r7, r4, 0x30
/* 8049AF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AF3C  3C C0 80 69 */	lis r6, l_insect_month@ha /* 0x8068DF44@ha */
/* 8049AF40  3C 80 80 64 */	lis r4, lit_575@ha /* 0x80644D24@ha */
/* 8049AF44  89 03 02 0C */	lbz r8, 0x20c(r3)
/* 8049AF48  38 06 DF 44 */	addi r0, r6, l_insect_month@l /* 0x8068DF44@l */
/* 8049AF4C  7C C0 3A 14 */	add r6, r0, r7
/* 8049AF50  C8 44 4D 24 */	lfd f2, lit_575@l(r4)  /* 0x80644D24@l */
/* 8049AF54  54 A0 18 38 */	slwi r0, r5, 3
/* 8049AF58  7C C6 02 14 */	add r6, r6, r0
/* 8049AF5C  88 E6 00 00 */	lbz r7, 0(r6)
/* 8049AF60  1C A8 00 0C */	mulli r5, r8, 0xc
/* 8049AF64  80 C6 00 04 */	lwz r6, 4(r6)
/* 8049AF68  3C 00 43 30 */	lis r0, 0x4330
/* 8049AF6C  7C 88 3A 14 */	add r4, r8, r7
/* 8049AF70  98 83 02 0C */	stb r4, 0x20c(r3)
/* 8049AF74  7C 83 2A 14 */	add r4, r3, r5
/* 8049AF78  7C E9 03 A6 */	mtctr r7
/* 8049AF7C  2C 07 00 00 */	cmpwi r7, 0
/* 8049AF80  41 82 00 3C */	beq lbl_8049AFBC
lbl_8049AF84:
/* 8049AF84  80 66 00 00 */	lwz r3, 0(r6)
/* 8049AF88  90 01 00 08 */	stw r0, 8(r1)
/* 8049AF8C  90 64 00 00 */	stw r3, 0(r4)
/* 8049AF90  88 66 00 04 */	lbz r3, 4(r6)
/* 8049AF94  98 64 00 04 */	stb r3, 4(r4)
/* 8049AF98  88 66 00 05 */	lbz r3, 5(r6)
/* 8049AF9C  38 C6 00 08 */	addi r6, r6, 8
/* 8049AFA0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049AFA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049AFA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049AFAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049AFB0  D0 04 00 08 */	stfs f0, 8(r4)
/* 8049AFB4  38 84 00 0C */	addi r4, r4, 0xc
/* 8049AFB8  42 00 FF CC */	bdnz lbl_8049AF84
lbl_8049AFBC:
/* 8049AFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049AFC0  4E 80 00 20 */	blr 
