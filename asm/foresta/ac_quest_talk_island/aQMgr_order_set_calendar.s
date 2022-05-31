lbl_8048FB28:
/* 8048FB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FB2C  7C 08 02 A6 */	mflr r0
/* 8048FB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FB34  A0 03 01 B6 */	lhz r0, 0x1b6(r3)
/* 8048FB38  2C 00 00 01 */	cmpwi r0, 1
/* 8048FB3C  40 82 00 64 */	bne lbl_8048FBA0
/* 8048FB40  3C 60 80 40 */	lis r3, lbRk_ToSeiyouReki@ha /* 0x80407658@ha */
/* 8048FB44  38 80 00 0B */	li r4, 0xb
/* 8048FB48  38 63 76 58 */	addi r3, r3, lbRk_ToSeiyouReki@l /* 0x80407658@l */
/* 8048FB4C  38 A0 00 0C */	li r5, 0xc
/* 8048FB50  38 C0 00 08 */	li r6, 8
/* 8048FB54  38 E0 00 0F */	li r7, 0xf
/* 8048FB58  4B FF DD B1 */	bl aQMgr_set_calendar_free_str
/* 8048FB5C  3C 60 80 40 */	lis r3, lbRk_ToSeiyouReki@ha /* 0x80407658@ha */
/* 8048FB60  38 80 00 0D */	li r4, 0xd
/* 8048FB64  38 63 76 58 */	addi r3, r3, lbRk_ToSeiyouReki@l /* 0x80407658@l */
/* 8048FB68  38 A0 00 0E */	li r5, 0xe
/* 8048FB6C  38 C0 00 09 */	li r6, 9
/* 8048FB70  38 E0 00 0D */	li r7, 0xd
/* 8048FB74  4B FF DD 95 */	bl aQMgr_set_calendar_free_str
/* 8048FB78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048FB7C  3C C0 80 40 */	lis r6, lbRk_ToKyuuReki@ha /* 0x80407770@ha */
/* 8048FB80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048FB84  38 80 00 0F */	li r4, 0xf
/* 8048FB88  3C A3 00 02 */	addis r5, r3, 2
/* 8048FB8C  38 66 77 70 */	addi r3, r6, lbRk_ToKyuuReki@l /* 0x80407770@l */
/* 8048FB90  88 C5 61 25 */	lbz r6, 0x6125(r5)
/* 8048FB94  88 E5 61 23 */	lbz r7, 0x6123(r5)
/* 8048FB98  38 A0 00 10 */	li r5, 0x10
/* 8048FB9C  4B FF DD 6D */	bl aQMgr_set_calendar_free_str
lbl_8048FBA0:
/* 8048FBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FBA4  7C 08 03 A6 */	mtlr r0
/* 8048FBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FBAC  4E 80 00 20 */	blr 
