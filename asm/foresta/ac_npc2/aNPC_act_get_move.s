lbl_805403FC:
/* 805403FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540400  7C 08 02 A6 */	mflr r0
/* 80540404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054040C  7C 7F 1B 78 */	mr r31, r3
/* 80540410  88 63 09 35 */	lbz r3, 0x935(r3)
/* 80540414  28 03 00 00 */	cmplwi r3, 0
/* 80540418  41 82 00 0C */	beq lbl_80540424
/* 8054041C  38 03 FF FF */	addi r0, r3, -1
/* 80540420  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_80540424:
/* 80540424  7F E3 FB 78 */	mr r3, r31
/* 80540428  4B FF EA D9 */	bl aNPC_act_demo_move
/* 8054042C  2C 03 00 00 */	cmpwi r3, 0
/* 80540430  41 82 00 1C */	beq lbl_8054044C
/* 80540434  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 80540438  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8054043C  40 82 00 10 */	bne lbl_8054044C
/* 80540440  88 1F 09 35 */	lbz r0, 0x935(r31)
/* 80540444  28 00 00 00 */	cmplwi r0, 0
/* 80540448  40 82 00 10 */	bne lbl_80540458
lbl_8054044C:
/* 8054044C  7F E3 FB 78 */	mr r3, r31
/* 80540450  38 80 00 01 */	li r4, 1
/* 80540454  4B FF FE 29 */	bl func_8054027C
lbl_80540458:
/* 80540458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054045C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540460  7C 08 03 A6 */	mtlr r0
/* 80540464  38 21 00 10 */	addi r1, r1, 0x10
/* 80540468  4E 80 00 20 */	blr 
