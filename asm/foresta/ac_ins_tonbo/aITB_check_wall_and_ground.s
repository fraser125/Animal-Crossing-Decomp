lbl_805A0D08:
/* 805A0D08  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 805A0D0C  38 A0 00 00 */	li r5, 0
/* 805A0D10  54 00 DF BD */	rlwinm. r0, r0, 0x1b, 0x1e, 0x1e
/* 805A0D14  40 82 00 18 */	bne lbl_805A0D2C
/* 805A0D18  88 83 00 98 */	lbz r4, 0x98(r3)
/* 805A0D1C  54 80 F7 BD */	rlwinm. r0, r4, 0x1e, 0x1e, 0x1e
/* 805A0D20  40 82 00 0C */	bne lbl_805A0D2C
/* 805A0D24  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 805A0D28  41 82 00 10 */	beq lbl_805A0D38
lbl_805A0D2C:
/* 805A0D2C  38 00 00 01 */	li r0, 1
/* 805A0D30  38 A0 00 01 */	li r5, 1
/* 805A0D34  90 03 02 34 */	stw r0, 0x234(r3)
lbl_805A0D38:
/* 805A0D38  7C A3 2B 78 */	mr r3, r5
/* 805A0D3C  4E 80 00 20 */	blr 
