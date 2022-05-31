lbl_805B6DC8:
/* 805B6DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6DCC  7C 08 02 A6 */	mflr r0
/* 805B6DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B6DD8  7C 9F 23 78 */	mr r31, r4
/* 805B6DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 805B6DE0  7C 7E 1B 78 */	mr r30, r3
/* 805B6DE4  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B6DE8  4B DB A2 2D */	bl cKF_SkeletonInfo_R_play
/* 805B6DEC  2C 03 00 01 */	cmpwi r3, 1
/* 805B6DF0  40 82 00 5C */	bne lbl_805B6E4C
/* 805B6DF4  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 805B6DF8  2C 00 00 03 */	cmpwi r0, 3
/* 805B6DFC  40 82 00 3C */	bne lbl_805B6E38
/* 805B6E00  7F C3 F3 78 */	mr r3, r30
/* 805B6E04  7F E4 FB 78 */	mr r4, r31
/* 805B6E08  4B FF F9 3D */	bl aNW_rewrite_out_data
/* 805B6E0C  3C 80 80 6C */	lis r4, aNW_needlework_shop_door_data@ha /* 0x806C6080@ha */
/* 805B6E10  7F E3 FB 78 */	mr r3, r31
/* 805B6E14  38 84 60 80 */	addi r4, r4, aNW_needlework_shop_door_data@l /* 0x806C6080@l */
/* 805B6E18  38 A0 00 00 */	li r5, 0
/* 805B6E1C  4B E3 A3 8D */	bl goto_other_scene
/* 805B6E20  7F C3 F3 78 */	mr r3, r30
/* 805B6E24  38 80 00 03 */	li r4, 3
/* 805B6E28  48 00 00 3D */	bl aNW_setup_action
/* 805B6E2C  7F C3 F3 78 */	mr r3, r30
/* 805B6E30  4B DE 34 71 */	bl mDemo_End
/* 805B6E34  48 00 00 10 */	b lbl_805B6E44
lbl_805B6E38:
/* 805B6E38  7F C3 F3 78 */	mr r3, r30
/* 805B6E3C  38 80 00 00 */	li r4, 0
/* 805B6E40  48 00 00 25 */	bl aNW_setup_action
lbl_805B6E44:
/* 805B6E44  38 00 00 00 */	li r0, 0
/* 805B6E48  90 1E 02 B0 */	stw r0, 0x2b0(r30)
lbl_805B6E4C:
/* 805B6E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6E54  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B6E58  7C 08 03 A6 */	mtlr r0
/* 805B6E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6E60  4E 80 00 20 */	blr 
