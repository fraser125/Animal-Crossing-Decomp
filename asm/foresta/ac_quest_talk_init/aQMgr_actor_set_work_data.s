lbl_8048A518:
/* 8048A518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048A51C  7C 08 02 A6 */	mflr r0
/* 8048A520  7C 64 1B 78 */	mr r4, r3
/* 8048A524  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048A528  88 63 01 C8 */	lbz r3, 0x1c8(r3)
/* 8048A52C  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 8048A530  2C 00 00 02 */	cmpwi r0, 2
/* 8048A534  41 82 00 0C */	beq lbl_8048A540
/* 8048A538  40 80 00 20 */	bge lbl_8048A558
/* 8048A53C  48 00 00 1C */	b lbl_8048A558
lbl_8048A540:
/* 8048A540  80 A4 01 78 */	lwz r5, 0x178(r4)
/* 8048A544  54 63 06 BE */	clrlwi r3, r3, 0x1a
/* 8048A548  38 84 02 08 */	addi r4, r4, 0x208
/* 8048A54C  80 A5 00 00 */	lwz r5, 0(r5)
/* 8048A550  80 A5 01 7C */	lwz r5, 0x17c(r5)
/* 8048A554  4B FF FF 6D */	bl aQMgr_actor_set_contest_work_data
lbl_8048A558:
/* 8048A558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048A55C  7C 08 03 A6 */	mtlr r0
/* 8048A560  38 21 00 10 */	addi r1, r1, 0x10
/* 8048A564  4E 80 00 20 */	blr 
