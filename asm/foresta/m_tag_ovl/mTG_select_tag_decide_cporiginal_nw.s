lbl_805FB838:
/* 805FB838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB83C  7C 08 02 A6 */	mflr r0
/* 805FB840  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB848  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB84C  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805FB850  83 E4 09 D8 */	lwz r31, 0x9d8(r4)
/* 805FB854  38 63 00 08 */	addi r3, r3, 8
/* 805FB858  4B FF 43 09 */	bl mTG_get_table_idx
/* 805FB85C  38 00 00 01 */	li r0, 1
/* 805FB860  A0 9F 00 00 */	lhz r4, 0(r31)
/* 805FB864  7C 00 18 30 */	slw r0, r0, r3
/* 805FB868  38 60 00 08 */	li r3, 8
/* 805FB86C  7C 80 00 39 */	and. r0, r4, r0
/* 805FB870  41 82 00 08 */	beq lbl_805FB878
/* 805FB874  38 60 00 45 */	li r3, 0x45
lbl_805FB878:
/* 805FB878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB880  7C 08 03 A6 */	mtlr r0
/* 805FB884  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB888  4E 80 00 20 */	blr 
