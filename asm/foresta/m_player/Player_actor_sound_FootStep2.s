lbl_804DF32C:
/* 804DF32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF330  7C 08 02 A6 */	mflr r0
/* 804DF334  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DF338  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF340  93 C1 00 08 */	stw r30, 8(r1)
/* 804DF344  7C 7E 1B 78 */	mr r30, r3
/* 804DF348  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804DF34C  3C 63 00 03 */	addis r3, r3, 3
/* 804DF350  8B E3 85 91 */	lbz r31, -0x7a6f(r3)
/* 804DF354  7F FF 07 75 */	extsb. r31, r31
/* 804DF358  41 80 00 3C */	blt lbl_804DF394
/* 804DF35C  38 7E 00 28 */	addi r3, r30, 0x28
/* 804DF360  4B F0 84 BD */	bl mRmTp_SoundStepWalkSE
/* 804DF364  2C 03 00 00 */	cmpwi r3, 0
/* 804DF368  41 82 00 14 */	beq lbl_804DF37C
/* 804DF36C  38 9E 00 28 */	addi r4, r30, 0x28
/* 804DF370  38 60 00 FF */	li r3, 0xff
/* 804DF374  48 14 E9 F9 */	bl sAdo_PlyWalkSeRoom
/* 804DF378  48 00 00 38 */	b lbl_804DF3B0
lbl_804DF37C:
/* 804DF37C  2C 1F 00 56 */	cmpwi r31, 0x56
/* 804DF380  40 80 00 30 */	bge lbl_804DF3B0
/* 804DF384  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 804DF388  38 9E 00 28 */	addi r4, r30, 0x28
/* 804DF38C  48 14 E9 E1 */	bl sAdo_PlyWalkSeRoom
/* 804DF390  48 00 00 20 */	b lbl_804DF3B0
lbl_804DF394:
/* 804DF394  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804DF398  54 03 AE BE */	rlwinm r3, r0, 0x15, 0x1a, 0x1f
/* 804DF39C  48 14 F2 35 */	bl sAdo_Get_WalkLabel
/* 804DF3A0  7C 60 1B 78 */	mr r0, r3
/* 804DF3A4  7F C3 F3 78 */	mr r3, r30
/* 804DF3A8  7C 04 03 78 */	mr r4, r0
/* 804DF3AC  4B FF FF 01 */	bl Player_actor_sound_FootStep1
lbl_804DF3B0:
/* 804DF3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF3B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DF3BC  7C 08 03 A6 */	mtlr r0
/* 804DF3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF3C4  4E 80 00 20 */	blr 
