lbl_8041D2BC:
/* 8041D2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041D2C0  7C 08 02 A6 */	mflr r0
/* 8041D2C4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041D2C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041D2CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041D2D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8041D2D4  7C 7E 1B 78 */	mr r30, r3
/* 8041D2D8  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8041D2DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8041D2E0  4B FB C3 61 */	bl get_player_actor_withoutCheck
/* 8041D2E4  7C 7F 1B 78 */	mr r31, r3
/* 8041D2E8  4B F8 79 E5 */	bl mFI_GetFieldId
/* 8041D2EC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041D2F0  40 82 00 64 */	bne lbl_8041D354
/* 8041D2F4  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8041D2F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041D2FC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8041D300  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041D304  3C 63 00 02 */	addis r3, r3, 2
/* 8041D308  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041D30C  90 A1 00 08 */	stw r5, 8(r1)
/* 8041D310  38 C4 52 F0 */	addi r6, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8041D314  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8041D318  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 8041D31C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041D320  7F C3 F3 78 */	mr r3, r30
/* 8041D324  38 81 00 08 */	addi r4, r1, 8
/* 8041D328  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8041D32C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8041D330  38 A0 00 03 */	li r5, 3
/* 8041D334  80 E6 00 00 */	lwz r7, 0(r6)
/* 8041D338  38 C0 00 00 */	li r6, 0
/* 8041D33C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041D340  39 20 00 00 */	li r9, 0
/* 8041D344  39 40 00 00 */	li r10, 0
/* 8041D348  81 8B 00 00 */	lwz r12, 0(r11)
/* 8041D34C  7D 89 03 A6 */	mtctr r12
/* 8041D350  4E 80 04 21 */	bctrl 
lbl_8041D354:
/* 8041D354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041D358  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041D35C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041D360  7C 08 03 A6 */	mtlr r0
/* 8041D364  38 21 00 20 */	addi r1, r1, 0x20
/* 8041D368  4E 80 00 20 */	blr 
