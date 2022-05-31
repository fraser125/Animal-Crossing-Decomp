lbl_80586D50:
/* 80586D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586D54  7C 08 02 A6 */	mflr r0
/* 80586D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586D5C  88 03 09 A1 */	lbz r0, 0x9a1(r3)
/* 80586D60  28 00 00 00 */	cmplwi r0, 0
/* 80586D64  40 82 00 1C */	bne lbl_80586D80
/* 80586D68  3C A0 80 58 */	lis r5, aNTT_set_norm_talk_info@ha /* 0x80586C9C@ha */
/* 80586D6C  7C 64 1B 78 */	mr r4, r3
/* 80586D70  38 A5 6C 9C */	addi r5, r5, aNTT_set_norm_talk_info@l /* 0x80586C9C@l */
/* 80586D74  38 60 00 07 */	li r3, 7
/* 80586D78  4B E1 33 E5 */	bl mDemo_Request
/* 80586D7C  48 00 00 0C */	b lbl_80586D88
lbl_80586D80:
/* 80586D80  38 00 00 00 */	li r0, 0
/* 80586D84  98 03 09 A1 */	stb r0, 0x9a1(r3)
lbl_80586D88:
/* 80586D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586D8C  7C 08 03 A6 */	mtlr r0
/* 80586D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80586D94  4E 80 00 20 */	blr 
