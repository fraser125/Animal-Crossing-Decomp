lbl_805F512C:
/* 805F512C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5130  7C 08 02 A6 */	mflr r0
/* 805F5134  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5138  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F513C  28 00 29 00 */	cmplwi r0, 0x2900
/* 805F5140  41 82 00 0C */	beq lbl_805F514C
/* 805F5144  28 00 29 01 */	cmplwi r0, 0x2901
/* 805F5148  40 82 00 10 */	bne lbl_805F5158
lbl_805F514C:
/* 805F514C  38 60 01 00 */	li r3, 0x100
/* 805F5150  4B DB EE C9 */	bl mISL_SetNowPlayerAction
/* 805F5154  48 00 00 1C */	b lbl_805F5170
lbl_805F5158:
/* 805F5158  28 00 29 02 */	cmplwi r0, 0x2902
/* 805F515C  41 80 00 14 */	blt lbl_805F5170
/* 805F5160  28 00 29 0A */	cmplwi r0, 0x290a
/* 805F5164  41 81 00 0C */	bgt lbl_805F5170
/* 805F5168  38 60 00 02 */	li r3, 2
/* 805F516C  4B DB EE AD */	bl mISL_SetNowPlayerAction
lbl_805F5170:
/* 805F5170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5174  7C 08 03 A6 */	mtlr r0
/* 805F5178  38 21 00 10 */	addi r1, r1, 0x10
/* 805F517C  4E 80 00 20 */	blr 
