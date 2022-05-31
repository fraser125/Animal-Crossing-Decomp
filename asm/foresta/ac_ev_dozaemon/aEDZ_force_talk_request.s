lbl_8051E8F8:
/* 8051E8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E8FC  7C 08 02 A6 */	mflr r0
/* 8051E900  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E904  88 03 09 A6 */	lbz r0, 0x9a6(r3)
/* 8051E908  28 00 00 00 */	cmplwi r0, 0
/* 8051E90C  40 82 00 1C */	bne lbl_8051E928
/* 8051E910  3C A0 80 52 */	lis r5, aEDZ_set_force_talk_info@ha /* 0x8051E854@ha */
/* 8051E914  7C 64 1B 78 */	mr r4, r3
/* 8051E918  38 A5 E8 54 */	addi r5, r5, aEDZ_set_force_talk_info@l /* 0x8051E854@l */
/* 8051E91C  38 60 00 08 */	li r3, 8
/* 8051E920  4B E7 B8 3D */	bl mDemo_Request
/* 8051E924  48 00 00 0C */	b lbl_8051E930
lbl_8051E928:
/* 8051E928  38 00 00 00 */	li r0, 0
/* 8051E92C  98 03 09 A6 */	stb r0, 0x9a6(r3)
lbl_8051E930:
/* 8051E930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E934  7C 08 03 A6 */	mtlr r0
/* 8051E938  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E93C  4E 80 00 20 */	blr 
