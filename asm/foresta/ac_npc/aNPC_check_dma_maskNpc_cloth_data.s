lbl_805398DC:
/* 805398DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805398E0  7C 08 02 A6 */	mflr r0
/* 805398E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805398E8  38 00 00 01 */	li r0, 1
/* 805398EC  A0 63 00 04 */	lhz r3, 4(r3)
/* 805398F0  28 03 00 00 */	cmplwi r3, 0
/* 805398F4  41 82 00 0C */	beq lbl_80539900
/* 805398F8  4B FF FF 25 */	bl aNPC_check_dma_cloth_data_sub
/* 805398FC  7C 60 1B 78 */	mr r0, r3
lbl_80539900:
/* 80539900  7C 03 03 78 */	mr r3, r0
/* 80539904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80539908  7C 08 03 A6 */	mtlr r0
/* 8053990C  38 21 00 10 */	addi r1, r1, 0x10
/* 80539910  4E 80 00 20 */	blr 
