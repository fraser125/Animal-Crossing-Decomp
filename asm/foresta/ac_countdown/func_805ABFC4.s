lbl_805ABFC4:
/* 805ABFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ABFC8  7C 08 02 A6 */	mflr r0
/* 805ABFCC  38 A0 00 00 */	li r5, 0
/* 805ABFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ABFD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ABFD8  7C 7F 1B 78 */	mr r31, r3
/* 805ABFDC  3C 60 80 B6 */	lis r3, cKF_bs_r_obj_e_count01@ha /* 0x80B6719C@ha */
/* 805ABFE0  38 83 71 9C */	addi r4, r3, cKF_bs_r_obj_e_count01@l /* 0x80B6719C@l */
/* 805ABFE4  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805ABFE8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805ABFEC  38 FF 02 46 */	addi r7, r31, 0x246
/* 805ABFF0  4B DC 4A A5 */	bl cKF_SkeletonInfo_R_ct
/* 805ABFF4  7F E3 FB 78 */	mr r3, r31
/* 805ABFF8  38 80 00 01 */	li r4, 1
/* 805ABFFC  48 00 00 E5 */	bl func_805AC0E0
/* 805AC000  7F E3 FB 78 */	mr r3, r31
/* 805AC004  38 80 00 00 */	li r4, 0
/* 805AC008  48 00 03 11 */	bl aCOU_setup_action
/* 805AC00C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AC010  4B DC 50 05 */	bl cKF_SkeletonInfo_R_play
/* 805AC014  38 00 00 00 */	li r0, 0
/* 805AC018  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 805AC01C  90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 805AC020  48 00 00 5D */	bl aCOU_init_clip_area
/* 805AC024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AC028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AC02C  7C 08 03 A6 */	mtlr r0
/* 805AC030  38 21 00 10 */	addi r1, r1, 0x10
/* 805AC034  4E 80 00 20 */	blr 
