lbl_805B820C:
/* 805B820C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8210  7C 08 02 A6 */	mflr r0
/* 805B8214  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B821C  7C 9F 23 78 */	mr r31, r4
/* 805B8220  93 C1 00 08 */	stw r30, 8(r1)
/* 805B8224  7C 7E 1B 78 */	mr r30, r3
/* 805B8228  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B822C  4B DB 8D E9 */	bl cKF_SkeletonInfo_R_play
/* 805B8230  2C 03 00 01 */	cmpwi r3, 1
/* 805B8234  40 82 00 5C */	bne lbl_805B8290
/* 805B8238  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 805B823C  2C 00 00 03 */	cmpwi r0, 3
/* 805B8240  40 82 00 3C */	bne lbl_805B827C
/* 805B8244  7F C3 F3 78 */	mr r3, r30
/* 805B8248  7F E4 FB 78 */	mr r4, r31
/* 805B824C  4B FF FA 1D */	bl aPOFF_rewrite_out_data
/* 805B8250  3C 80 80 6C */	lis r4, aPOFF_post_office_door_data@ha /* 0x806C6310@ha */
/* 805B8254  7F E3 FB 78 */	mr r3, r31
/* 805B8258  38 84 63 10 */	addi r4, r4, aPOFF_post_office_door_data@l /* 0x806C6310@l */
/* 805B825C  38 A0 00 00 */	li r5, 0
/* 805B8260  4B E3 8F 49 */	bl goto_other_scene
/* 805B8264  7F C3 F3 78 */	mr r3, r30
/* 805B8268  38 80 00 03 */	li r4, 3
/* 805B826C  48 00 00 3D */	bl aPOFF_setup_action
/* 805B8270  7F C3 F3 78 */	mr r3, r30
/* 805B8274  4B DE 20 2D */	bl mDemo_End
/* 805B8278  48 00 00 10 */	b lbl_805B8288
lbl_805B827C:
/* 805B827C  7F C3 F3 78 */	mr r3, r30
/* 805B8280  38 80 00 00 */	li r4, 0
/* 805B8284  48 00 00 25 */	bl aPOFF_setup_action
lbl_805B8288:
/* 805B8288  38 00 00 00 */	li r0, 0
/* 805B828C  90 1E 02 B0 */	stw r0, 0x2b0(r30)
lbl_805B8290:
/* 805B8290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B8294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B8298  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B829C  7C 08 03 A6 */	mtlr r0
/* 805B82A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B82A4  4E 80 00 20 */	blr 
