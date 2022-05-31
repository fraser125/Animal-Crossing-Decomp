lbl_805FA284:
/* 805FA284  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 805FA288  38 A0 00 00 */	li r5, 0
/* 805FA28C  41 82 00 40 */	beq lbl_805FA2CC
/* 805FA290  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805FA294  2C 00 00 06 */	cmpwi r0, 6
/* 805FA298  40 82 00 34 */	bne lbl_805FA2CC
/* 805FA29C  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 805FA2A0  2C 04 00 03 */	cmpwi r4, 3
/* 805FA2A4  40 82 00 10 */	bne lbl_805FA2B4
/* 805FA2A8  38 00 00 04 */	li r0, 4
/* 805FA2AC  90 03 00 3C */	stw r0, 0x3c(r3)
/* 805FA2B0  48 00 00 0C */	b lbl_805FA2BC
lbl_805FA2B4:
/* 805FA2B4  38 04 00 02 */	addi r0, r4, 2
/* 805FA2B8  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_805FA2BC:
/* 805FA2BC  38 00 00 00 */	li r0, 0
/* 805FA2C0  38 A0 00 01 */	li r5, 1
/* 805FA2C4  90 03 00 38 */	stw r0, 0x38(r3)
/* 805FA2C8  48 00 00 4C */	b lbl_805FA314
lbl_805FA2CC:
/* 805FA2CC  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 805FA2D0  41 82 00 44 */	beq lbl_805FA314
/* 805FA2D4  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805FA2D8  2C 00 00 00 */	cmpwi r0, 0
/* 805FA2DC  40 82 00 38 */	bne lbl_805FA314
/* 805FA2E0  38 00 00 06 */	li r0, 6
/* 805FA2E4  90 03 00 38 */	stw r0, 0x38(r3)
/* 805FA2E8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 805FA2EC  2C 04 00 02 */	cmpwi r4, 2
/* 805FA2F0  40 80 00 10 */	bge lbl_805FA300
/* 805FA2F4  38 00 00 00 */	li r0, 0
/* 805FA2F8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 805FA2FC  48 00 00 0C */	b lbl_805FA308
lbl_805FA300:
/* 805FA300  38 04 FF FE */	addi r0, r4, -2
/* 805FA304  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_805FA308:
/* 805FA308  38 00 00 00 */	li r0, 0
/* 805FA30C  38 A0 00 01 */	li r5, 1
/* 805FA310  90 03 00 40 */	stw r0, 0x40(r3)
lbl_805FA314:
/* 805FA314  7C A3 2B 78 */	mr r3, r5
/* 805FA318  4E 80 00 20 */	blr 
