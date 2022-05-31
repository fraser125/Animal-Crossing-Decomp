lbl_8049CB58:
/* 8049CB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CB5C  7C 08 02 A6 */	mflr r0
/* 8049CB60  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FE02@ha */
/* 8049CB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CB68  38 84 FE 02 */	addi r4, r4, 0xFE02 /* 0x0000FE02@l */
/* 8049CB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049CB70  7C 7F 1B 78 */	mr r31, r3
/* 8049CB74  A0 63 00 04 */	lhz r3, 4(r3)
/* 8049CB78  4B F4 E2 6D */	bl mSP_SetGoods2ReservedPoint
/* 8049CB7C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FE02@ha */
/* 8049CB80  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8049CB84  38 84 FE 02 */	addi r4, r4, 0xFE02 /* 0x0000FE02@l */
/* 8049CB88  4B F4 E2 5D */	bl mSP_SetGoods2ReservedPoint
/* 8049CB8C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FE02@ha */
/* 8049CB90  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8049CB94  38 84 FE 02 */	addi r4, r4, 0xFE02 /* 0x0000FE02@l */
/* 8049CB98  4B F4 E2 4D */	bl mSP_SetGoods2ReservedPoint
/* 8049CB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049CBA4  7C 08 03 A6 */	mtlr r0
/* 8049CBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CBAC  4E 80 00 20 */	blr 
