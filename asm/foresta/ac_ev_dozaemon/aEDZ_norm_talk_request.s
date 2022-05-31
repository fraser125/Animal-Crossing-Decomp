lbl_8051E9EC:
/* 8051E9EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E9F0  7C 08 02 A6 */	mflr r0
/* 8051E9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E9F8  88 03 09 A6 */	lbz r0, 0x9a6(r3)
/* 8051E9FC  28 00 00 00 */	cmplwi r0, 0
/* 8051EA00  40 82 00 1C */	bne lbl_8051EA1C
/* 8051EA04  3C A0 80 52 */	lis r5, aEDZ_set_norm_talk_info@ha /* 0x8051E940@ha */
/* 8051EA08  7C 64 1B 78 */	mr r4, r3
/* 8051EA0C  38 A5 E9 40 */	addi r5, r5, aEDZ_set_norm_talk_info@l /* 0x8051E940@l */
/* 8051EA10  38 60 00 07 */	li r3, 7
/* 8051EA14  4B E7 B7 49 */	bl mDemo_Request
/* 8051EA18  48 00 00 0C */	b lbl_8051EA24
lbl_8051EA1C:
/* 8051EA1C  38 00 00 00 */	li r0, 0
/* 8051EA20  98 03 09 A6 */	stb r0, 0x9a6(r3)
lbl_8051EA24:
/* 8051EA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EA28  7C 08 03 A6 */	mtlr r0
/* 8051EA2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EA30  4E 80 00 20 */	blr 
