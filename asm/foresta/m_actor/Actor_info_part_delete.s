lbl_80375350:
/* 80375350  80 A3 00 00 */	lwz r5, 0(r3)
/* 80375354  38 05 FF FF */	addi r0, r5, -1
/* 80375358  90 03 00 00 */	stw r0, 0(r3)
/* 8037535C  88 04 00 02 */	lbz r0, 2(r4)
/* 80375360  54 00 18 38 */	slwi r0, r0, 3
/* 80375364  7C C3 02 14 */	add r6, r3, r0
/* 80375368  80 A6 00 04 */	lwz r5, 4(r6)
/* 8037536C  38 05 FF FF */	addi r0, r5, -1
/* 80375370  90 06 00 04 */	stw r0, 4(r6)
/* 80375374  80 A4 01 54 */	lwz r5, 0x154(r4)
/* 80375378  28 05 00 00 */	cmplwi r5, 0
/* 8037537C  41 82 00 10 */	beq lbl_8037538C
/* 80375380  80 04 01 58 */	lwz r0, 0x158(r4)
/* 80375384  90 05 01 58 */	stw r0, 0x158(r5)
/* 80375388  48 00 00 18 */	b lbl_803753A0
lbl_8037538C:
/* 8037538C  88 04 00 02 */	lbz r0, 2(r4)
/* 80375390  80 A4 01 58 */	lwz r5, 0x158(r4)
/* 80375394  54 00 18 38 */	slwi r0, r0, 3
/* 80375398  7C 63 02 14 */	add r3, r3, r0
/* 8037539C  90 A3 00 08 */	stw r5, 8(r3)
lbl_803753A0:
/* 803753A0  80 64 01 58 */	lwz r3, 0x158(r4)
/* 803753A4  28 03 00 00 */	cmplwi r3, 0
/* 803753A8  41 82 00 0C */	beq lbl_803753B4
/* 803753AC  80 04 01 54 */	lwz r0, 0x154(r4)
/* 803753B0  90 03 01 54 */	stw r0, 0x154(r3)
lbl_803753B4:
/* 803753B4  38 00 00 00 */	li r0, 0
/* 803753B8  90 04 01 54 */	stw r0, 0x154(r4)
/* 803753BC  90 04 01 58 */	stw r0, 0x158(r4)
/* 803753C0  4E 80 00 20 */	blr 
