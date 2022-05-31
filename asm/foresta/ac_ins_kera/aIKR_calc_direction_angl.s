lbl_8059D4D0:
/* 8059D4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D4D4  7C 08 02 A6 */	mflr r0
/* 8059D4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D4DC  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 8059D4E0  54 00 DF BD */	rlwinm. r0, r0, 0x1b, 0x1e, 0x1e
/* 8059D4E4  41 82 00 48 */	beq lbl_8059D52C
/* 8059D4E8  88 03 00 99 */	lbz r0, 0x99(r3)
/* 8059D4EC  54 00 F7 7F */	rlwinm. r0, r0, 0x1e, 0x1d, 0x1f
/* 8059D4F0  41 82 00 3C */	beq lbl_8059D52C
/* 8059D4F4  38 80 00 00 */	li r4, 0
/* 8059D4F8  7C 09 03 A6 */	mtctr r0
/* 8059D4FC  40 81 00 30 */	ble lbl_8059D52C
lbl_8059D500:
/* 8059D500  38 04 00 AA */	addi r0, r4, 0xaa
/* 8059D504  7C 03 02 AE */	lhax r0, r3, r0
/* 8059D508  2C 00 00 00 */	cmpwi r0, 0
/* 8059D50C  40 82 00 18 */	bne lbl_8059D524
/* 8059D510  7C 83 22 14 */	add r4, r3, r4
/* 8059D514  A8 84 00 A8 */	lha r4, 0xa8(r4)
/* 8059D518  38 04 40 00 */	addi r0, r4, 0x4000
/* 8059D51C  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8059D520  48 00 00 0C */	b lbl_8059D52C
lbl_8059D524:
/* 8059D524  38 84 00 04 */	addi r4, r4, 4
/* 8059D528  42 00 FF D8 */	bdnz lbl_8059D500
lbl_8059D52C:
/* 8059D52C  A8 83 00 36 */	lha r4, 0x36(r3)
/* 8059D530  38 63 00 DE */	addi r3, r3, 0xde
/* 8059D534  38 A0 08 00 */	li r5, 0x800
/* 8059D538  4B E1 D6 0D */	bl chase_angle
/* 8059D53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D540  7C 08 03 A6 */	mtlr r0
/* 8059D544  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D548  4E 80 00 20 */	blr 
