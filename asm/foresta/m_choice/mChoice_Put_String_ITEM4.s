lbl_80384258:
/* 80384258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038425C  7C 08 02 A6 */	mflr r0
/* 80384260  38 E0 00 04 */	li r7, 4
/* 80384264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384268  4B FF FF 05 */	bl mChoice_Put_String_ITEM
/* 8038426C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384270  7C 08 03 A6 */	mtlr r0
/* 80384274  38 21 00 10 */	addi r1, r1, 0x10
/* 80384278  4E 80 00 20 */	blr 
