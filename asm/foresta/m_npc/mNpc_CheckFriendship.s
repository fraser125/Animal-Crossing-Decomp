lbl_803CE468:
/* 803CE468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE46C  7C 08 02 A6 */	mflr r0
/* 803CE470  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE474  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE478  4B CC CA 59 */	bl func_8009AED0
/* 803CE47C  7C 9D 23 78 */	mr r29, r4
/* 803CE480  7C 7C 1B 78 */	mr r28, r3
/* 803CE484  7F A3 EB 78 */	mr r3, r29
/* 803CE488  3B C0 FF FF */	li r30, -1
/* 803CE48C  4B FF CF 51 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CE490  2C 03 00 00 */	cmpwi r3, 0
/* 803CE494  40 82 00 5C */	bne lbl_803CE4F0
/* 803CE498  38 7D 00 10 */	addi r3, r29, 0x10
/* 803CE49C  38 80 00 07 */	li r4, 7
/* 803CE4A0  4B FF DB 0D */	bl mNpc_GetHighestFriendshipIdx
/* 803CE4A4  7C 7F 1B 78 */	mr r31, r3
/* 803CE4A8  2C 1F FF FF */	cmpwi r31, -1
/* 803CE4AC  41 82 00 44 */	beq lbl_803CE4F0
/* 803CE4B0  1C 9F 01 38 */	mulli r4, r31, 0x138
/* 803CE4B4  7F 83 E3 78 */	mr r3, r28
/* 803CE4B8  38 84 00 10 */	addi r4, r4, 0x10
/* 803CE4BC  7C 9D 22 14 */	add r4, r29, r4
/* 803CE4C0  48 01 1C 85 */	bl mPr_CheckCmpPersonalID
/* 803CE4C4  2C 03 00 00 */	cmpwi r3, 0
/* 803CE4C8  41 82 00 28 */	beq lbl_803CE4F0
/* 803CE4CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CE4D0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803CE4D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CE4D8  3C 63 00 02 */	addis r3, r3, 2
/* 803CE4DC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803CE4E0  A0 63 23 D8 */	lhz r3, 0x23d8(r3)
/* 803CE4E4  7C 03 00 40 */	cmplw r3, r0
/* 803CE4E8  41 82 00 08 */	beq lbl_803CE4F0
/* 803CE4EC  7F FE FB 78 */	mr r30, r31
lbl_803CE4F0:
/* 803CE4F0  7F C3 F3 78 */	mr r3, r30
/* 803CE4F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE4F8  4B CC CA 25 */	bl func_8009AF1C
/* 803CE4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE500  7C 08 03 A6 */	mtlr r0
/* 803CE504  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE508  4E 80 00 20 */	blr 
