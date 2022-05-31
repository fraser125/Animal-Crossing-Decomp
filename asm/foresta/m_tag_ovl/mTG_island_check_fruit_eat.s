lbl_805F523C:
/* 805F523C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5240  7C 08 02 A6 */	mflr r0
/* 805F5244  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5248  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F524C  28 00 28 07 */	cmplwi r0, 0x2807
/* 805F5250  40 82 00 0C */	bne lbl_805F525C
/* 805F5254  3C 60 00 20 */	lis r3, 0x20
/* 805F5258  4B DB ED C1 */	bl mISL_SetNowPlayerAction
lbl_805F525C:
/* 805F525C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5260  7C 08 03 A6 */	mtlr r0
/* 805F5264  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5268  4E 80 00 20 */	blr 
