lbl_80534280:
/* 80534280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534284  7C 08 02 A6 */	mflr r0
/* 80534288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053428C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80534290  7C 7F 1B 78 */	mr r31, r3
/* 80534294  88 63 09 35 */	lbz r3, 0x935(r3)
/* 80534298  28 03 00 00 */	cmplwi r3, 0
/* 8053429C  41 82 00 0C */	beq lbl_805342A8
/* 805342A0  38 03 FF FF */	addi r0, r3, -1
/* 805342A4  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_805342A8:
/* 805342A8  7F E3 FB 78 */	mr r3, r31
/* 805342AC  4B FF CC 55 */	bl aNPC_act_search_move
/* 805342B0  2C 03 00 00 */	cmpwi r3, 0
/* 805342B4  41 82 00 1C */	beq lbl_805342D0
/* 805342B8  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 805342BC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805342C0  40 82 00 10 */	bne lbl_805342D0
/* 805342C4  88 1F 09 35 */	lbz r0, 0x935(r31)
/* 805342C8  28 00 00 00 */	cmplwi r0, 0
/* 805342CC  40 82 00 10 */	bne lbl_805342DC
lbl_805342D0:
/* 805342D0  7F E3 FB 78 */	mr r3, r31
/* 805342D4  38 80 00 01 */	li r4, 1
/* 805342D8  4B FF FE 29 */	bl func_80534100
lbl_805342DC:
/* 805342DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805342E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805342E4  7C 08 03 A6 */	mtlr r0
/* 805342E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805342EC  4E 80 00 20 */	blr 
