lbl_80415A78:
/* 80415A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415A7C  7C 08 02 A6 */	mflr r0
/* 80415A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415A88  7C 7F 1B 78 */	mr r31, r3
/* 80415A8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80415A90  7C 9E 23 78 */	mr r30, r4
/* 80415A94  80 A3 01 84 */	lwz r5, 0x184(r3)
/* 80415A98  28 05 00 00 */	cmplwi r5, 0
/* 80415A9C  41 82 00 1C */	beq lbl_80415AB8
/* 80415AA0  A8 05 00 DC */	lha r0, 0xdc(r5)
/* 80415AA4  B0 03 00 DC */	sth r0, 0xdc(r3)
/* 80415AA8  A8 05 00 DE */	lha r0, 0xde(r5)
/* 80415AAC  B0 03 00 DE */	sth r0, 0xde(r3)
/* 80415AB0  C0 05 00 74 */	lfs f0, 0x74(r5)
/* 80415AB4  D0 1F 01 A0 */	stfs f0, 0x1a0(r31)
lbl_80415AB8:
/* 80415AB8  7F E3 FB 78 */	mr r3, r31
/* 80415ABC  7F C4 F3 78 */	mr r4, r30
/* 80415AC0  4B FF F5 ED */	bl aBTD_setup_castaway
/* 80415AC4  81 9F 01 78 */	lwz r12, 0x178(r31)
/* 80415AC8  7F E3 FB 78 */	mr r3, r31
/* 80415ACC  7F C4 F3 78 */	mr r4, r30
/* 80415AD0  7D 89 03 A6 */	mtctr r12
/* 80415AD4  4E 80 04 21 */	bctrl 
/* 80415AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415AE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415AE4  7C 08 03 A6 */	mtlr r0
/* 80415AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80415AEC  4E 80 00 20 */	blr 
