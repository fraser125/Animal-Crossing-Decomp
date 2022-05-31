lbl_805B067C:
/* 805B067C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B0680  7C 08 02 A6 */	mflr r0
/* 805B0684  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B0688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B068C  7C 9F 23 78 */	mr r31, r4
/* 805B0690  93 C1 00 08 */	stw r30, 8(r1)
/* 805B0694  7C 7E 1B 78 */	mr r30, r3
/* 805B0698  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B069C  4B DC 09 79 */	bl cKF_SkeletonInfo_R_play
/* 805B06A0  2C 03 00 01 */	cmpwi r3, 1
/* 805B06A4  40 82 00 88 */	bne lbl_805B072C
/* 805B06A8  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 805B06AC  2C 00 00 03 */	cmpwi r0, 3
/* 805B06B0  41 82 00 14 */	beq lbl_805B06C4
/* 805B06B4  40 80 00 60 */	bge lbl_805B0714
/* 805B06B8  2C 00 00 01 */	cmpwi r0, 1
/* 805B06BC  40 80 00 40 */	bge lbl_805B06FC
/* 805B06C0  48 00 00 54 */	b lbl_805B0714
lbl_805B06C4:
/* 805B06C4  7F C3 F3 78 */	mr r3, r30
/* 805B06C8  7F E4 FB 78 */	mr r4, r31
/* 805B06CC  4B FF F8 35 */	bl aHUS_rewrite_out_data
/* 805B06D0  3C 80 80 6C */	lis r4, aHUS_npc_house_door_data@ha /* 0x806C537C@ha */
/* 805B06D4  7F E3 FB 78 */	mr r3, r31
/* 805B06D8  38 84 53 7C */	addi r4, r4, aHUS_npc_house_door_data@l /* 0x806C537C@l */
/* 805B06DC  38 A0 00 00 */	li r5, 0
/* 805B06E0  4B E4 0A C9 */	bl goto_other_scene
/* 805B06E4  38 00 00 09 */	li r0, 9
/* 805B06E8  7F C3 F3 78 */	mr r3, r30
/* 805B06EC  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 805B06F0  3B E0 00 03 */	li r31, 3
/* 805B06F4  4B DE 9B AD */	bl mDemo_End
/* 805B06F8  48 00 00 20 */	b lbl_805B0718
lbl_805B06FC:
/* 805B06FC  3C 60 80 6C */	lis r3, data_806C5240@ha /* 0x806C5240@ha */
/* 805B0700  3B E0 00 00 */	li r31, 0
/* 805B0704  38 63 52 40 */	addi r3, r3, data_806C5240@l /* 0x806C5240@l */
/* 805B0708  80 03 00 04 */	lwz r0, 4(r3)
/* 805B070C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 805B0710  48 00 00 08 */	b lbl_805B0718
lbl_805B0714:
/* 805B0714  3B E0 00 00 */	li r31, 0
lbl_805B0718:
/* 805B0718  38 00 00 00 */	li r0, 0
/* 805B071C  7F C3 F3 78 */	mr r3, r30
/* 805B0720  90 1E 02 B0 */	stw r0, 0x2b0(r30)
/* 805B0724  7F E4 FB 78 */	mr r4, r31
/* 805B0728  48 00 00 1D */	bl aHUS_setup_action
lbl_805B072C:
/* 805B072C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B0730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B0734  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B0738  7C 08 03 A6 */	mtlr r0
/* 805B073C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B0740  4E 80 00 20 */	blr 
