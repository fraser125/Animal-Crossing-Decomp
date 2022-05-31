lbl_8052AEF4:
/* 8052AEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AEF8  7C 08 02 A6 */	mflr r0
/* 8052AEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AF00  88 03 09 A7 */	lbz r0, 0x9a7(r3)
/* 8052AF04  28 00 00 00 */	cmplwi r0, 0
/* 8052AF08  40 82 00 1C */	bne lbl_8052AF24
/* 8052AF0C  3C A0 80 53 */	lis r5, aHN0_set_norm_talk_info@ha /* 0x8052AEB0@ha */
/* 8052AF10  7C 64 1B 78 */	mr r4, r3
/* 8052AF14  38 A5 AE B0 */	addi r5, r5, aHN0_set_norm_talk_info@l /* 0x8052AEB0@l */
/* 8052AF18  38 60 00 07 */	li r3, 7
/* 8052AF1C  4B E6 F2 41 */	bl mDemo_Request
/* 8052AF20  48 00 00 0C */	b lbl_8052AF2C
lbl_8052AF24:
/* 8052AF24  38 00 00 00 */	li r0, 0
/* 8052AF28  98 03 09 A7 */	stb r0, 0x9a7(r3)
lbl_8052AF2C:
/* 8052AF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AF30  7C 08 03 A6 */	mtlr r0
/* 8052AF34  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AF38  4E 80 00 20 */	blr 
