lbl_80502C4C:
/* 80502C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502C50  7C 08 02 A6 */	mflr r0
/* 80502C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80502C5C  7C 9F 23 78 */	mr r31, r4
/* 80502C60  93 C1 00 08 */	stw r30, 8(r1)
/* 80502C64  7C 7E 1B 78 */	mr r30, r3
/* 80502C68  4B FD 48 75 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80502C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80502C70  40 82 00 50 */	bne lbl_80502CC0
/* 80502C74  80 1E 0D B4 */	lwz r0, 0xdb4(r30)
/* 80502C78  2C 00 00 78 */	cmpwi r0, 0x78
/* 80502C7C  40 82 00 44 */	bne lbl_80502CC0
/* 80502C80  3C 80 80 65 */	lis r4, lit_9522@ha /* 0x806484D0@ha */
/* 80502C84  38 7E 01 74 */	addi r3, r30, 0x174
/* 80502C88  C0 24 84 D0 */	lfs f1, lit_9522@l(r4)  /* 0x806484D0@l */
/* 80502C8C  4B FD 49 75 */	bl Player_actor_Check_AnimationFrame
/* 80502C90  2C 03 00 00 */	cmpwi r3, 0
/* 80502C94  41 82 00 2C */	beq lbl_80502CC0
/* 80502C98  4B ED 0D 5D */	bl mNpc_SetTalkBee
/* 80502C9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80502CA0  38 A0 00 01 */	li r5, 1
/* 80502CA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80502CA8  38 00 00 00 */	li r0, 0
/* 80502CAC  3C 83 00 03 */	addis r4, r3, 3
/* 80502CB0  7F E3 FB 78 */	mr r3, r31
/* 80502CB4  98 A4 88 38 */	stb r5, -0x77c8(r4)
/* 80502CB8  98 04 88 39 */	stb r0, -0x77c7(r4)
/* 80502CBC  4B ED 69 19 */	bl mPlib_change_player_face
lbl_80502CC0:
/* 80502CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80502CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80502CCC  7C 08 03 A6 */	mtlr r0
/* 80502CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80502CD4  4E 80 00 20 */	blr 
