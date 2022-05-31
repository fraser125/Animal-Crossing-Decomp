lbl_8052D978:
/* 8052D978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052D97C  7C 08 02 A6 */	mflr r0
/* 8052D980  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052D984  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052D988  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052D98C  3C 84 00 02 */	addis r4, r4, 2
/* 8052D990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052D994  3B E0 00 01 */	li r31, 1
/* 8052D998  93 C1 00 08 */	stw r30, 8(r1)
/* 8052D99C  7C 7E 1B 78 */	mr r30, r3
/* 8052D9A0  80 84 60 A0 */	lwz r4, 0x60a0(r4)
/* 8052D9A4  28 04 00 00 */	cmplwi r4, 0
/* 8052D9A8  41 82 00 50 */	beq lbl_8052D9F8
/* 8052D9AC  81 84 00 04 */	lwz r12, 4(r4)
/* 8052D9B0  38 A0 00 02 */	li r5, 2
/* 8052D9B4  80 9E 08 A0 */	lwz r4, 0x8a0(r30)
/* 8052D9B8  7D 89 03 A6 */	mtctr r12
/* 8052D9BC  4E 80 04 21 */	bctrl 
/* 8052D9C0  2C 03 00 01 */	cmpwi r3, 1
/* 8052D9C4  40 82 00 34 */	bne lbl_8052D9F8
/* 8052D9C8  3C 60 80 6A */	lis r3, next_act_idx_1064@ha /* 0x806A1E88@ha */
/* 8052D9CC  88 BE 08 98 */	lbz r5, 0x898(r30)
/* 8052D9D0  38 03 1E 88 */	addi r0, r3, next_act_idx_1064@l /* 0x806A1E88@l */
/* 8052D9D4  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 8052D9D8  7C A5 02 14 */	add r5, r5, r0
/* 8052D9DC  7F C3 F3 78 */	mr r3, r30
/* 8052D9E0  88 A5 FF FF */	lbz r5, -1(r5)
/* 8052D9E4  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 8052D9E8  38 80 00 04 */	li r4, 4
/* 8052D9EC  38 C0 00 00 */	li r6, 0
/* 8052D9F0  48 00 3C 0D */	bl aNPC_set_request_act
/* 8052D9F4  3B E0 00 00 */	li r31, 0
lbl_8052D9F8:
/* 8052D9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052D9FC  7F E3 FB 78 */	mr r3, r31
/* 8052DA00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052DA04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052DA08  7C 08 03 A6 */	mtlr r0
/* 8052DA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052DA10  4E 80 00 20 */	blr 
