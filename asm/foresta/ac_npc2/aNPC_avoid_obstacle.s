lbl_80541E04:
/* 80541E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80541E08  7C 08 02 A6 */	mflr r0
/* 80541E0C  38 A0 00 00 */	li r5, 0
/* 80541E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80541E14  80 03 07 D8 */	lwz r0, 0x7d8(r3)
/* 80541E18  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80541E1C  41 82 00 64 */	beq lbl_80541E80
/* 80541E20  88 03 09 40 */	lbz r0, 0x940(r3)
/* 80541E24  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80541E28  41 82 00 58 */	beq lbl_80541E80
/* 80541E2C  88 03 09 41 */	lbz r0, 0x941(r3)
/* 80541E30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80541E34  41 82 00 4C */	beq lbl_80541E80
/* 80541E38  A8 A3 00 DE */	lha r5, 0xde(r3)
/* 80541E3C  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 80541E40  7C 05 00 50 */	subf r0, r5, r0
/* 80541E44  7C 05 07 35 */	extsh. r5, r0
/* 80541E48  7C 05 00 D0 */	neg r0, r5
/* 80541E4C  41 80 00 08 */	blt lbl_80541E54
/* 80541E50  7C A0 2B 78 */	mr r0, r5
lbl_80541E54:
/* 80541E54  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80541E58  40 80 00 0C */	bge lbl_80541E64
/* 80541E5C  4B FF FE F9 */	bl aNPC_turn_to_another_route
/* 80541E60  48 00 00 1C */	b lbl_80541E7C
lbl_80541E64:
/* 80541E64  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 80541E68  38 A0 00 00 */	li r5, 0
/* 80541E6C  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80541E70  38 C0 00 00 */	li r6, 0
/* 80541E74  38 80 00 01 */	li r4, 1
/* 80541E78  4B FF D5 29 */	bl aNPC_set_request_act
lbl_80541E7C:
/* 80541E7C  38 A0 00 01 */	li r5, 1
lbl_80541E80:
/* 80541E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541E84  7C A3 2B 78 */	mr r3, r5
/* 80541E88  7C 08 03 A6 */	mtlr r0
/* 80541E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80541E90  4E 80 00 20 */	blr 
