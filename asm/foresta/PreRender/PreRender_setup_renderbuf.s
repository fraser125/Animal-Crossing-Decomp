lbl_80404508:
/* 80404508  B0 83 00 00 */	sth r4, 0(r3)
/* 8040450C  39 00 00 00 */	li r8, 0
/* 80404510  38 84 FF FF */	addi r4, r4, -1
/* 80404514  38 05 FF FF */	addi r0, r5, -1
/* 80404518  B0 A3 00 02 */	sth r5, 2(r3)
/* 8040451C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80404520  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 80404524  B1 03 00 2C */	sth r8, 0x2c(r3)
/* 80404528  B1 03 00 2E */	sth r8, 0x2e(r3)
/* 8040452C  B0 83 00 30 */	sth r4, 0x30(r3)
/* 80404530  B0 03 00 32 */	sth r0, 0x32(r3)
/* 80404534  4E 80 00 20 */	blr 
