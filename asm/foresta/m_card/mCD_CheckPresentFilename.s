lbl_803FAC6C:
/* 803FAC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FAC70  7C 08 02 A6 */	mflr r0
/* 803FAC74  3C 80 80 66 */	lis r4, l_mCD_present_file_name@ha /* 0x8065E6E8@ha */
/* 803FAC78  38 A0 00 15 */	li r5, 0x15
/* 803FAC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FAC80  38 84 E6 E8 */	addi r4, r4, l_mCD_present_file_name@l /* 0x8065E6E8@l */
/* 803FAC84  4B FF FF 8D */	bl mCD_CheckFilename
/* 803FAC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FAC8C  7C 08 03 A6 */	mtlr r0
/* 803FAC90  38 21 00 10 */	addi r1, r1, 0x10
/* 803FAC94  4E 80 00 20 */	blr 
