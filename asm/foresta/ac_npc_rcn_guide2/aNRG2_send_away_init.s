lbl_80571CBC:
/* 80571CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571CC0  7C 08 02 A6 */	mflr r0
/* 80571CC4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80571CC8  7C 83 23 78 */	mr r3, r4
/* 80571CCC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80571CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571CD4  3C 84 00 03 */	addis r4, r4, 3
/* 80571CD8  38 A0 00 01 */	li r5, 1
/* 80571CDC  38 84 85 44 */	addi r4, r4, -31420
/* 80571CE0  4B E7 F4 C9 */	bl goto_other_scene
/* 80571CE4  38 60 00 0E */	li r3, 0xe
/* 80571CE8  4B E0 AB 39 */	bl mBGMPsComp_scene_mode
/* 80571CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571CF0  7C 08 03 A6 */	mtlr r0
/* 80571CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80571CF8  4E 80 00 20 */	blr 
