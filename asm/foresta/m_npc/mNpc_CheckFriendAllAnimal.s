lbl_803D0360:
/* 803D0360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D0364  7C 08 02 A6 */	mflr r0
/* 803D0368  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D036C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0370  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D0374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D0378  8B E4 00 18 */	lbz r31, 0x18(r4)
/* 803D037C  4B FF FF 59 */	bl mNpc_GetFriendAnimalNum
/* 803D0380  7C 65 FE 70 */	srawi r5, r3, 0x1f
/* 803D0384  57 E4 0F FE */	srwi r4, r31, 0x1f
/* 803D0388  7C 1F 18 10 */	subfc r0, r31, r3
/* 803D038C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0390  7C 65 21 14 */	adde r3, r5, r4
/* 803D0394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D0398  7C 08 03 A6 */	mtlr r0
/* 803D039C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D03A0  4E 80 00 20 */	blr 
