lbl_80505B44:
/* 80505B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505B48  7C 08 02 A6 */	mflr r0
/* 80505B4C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 80505B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505B54  38 C5 65 68 */	addi r6, r5, lit_604@l /* 0x80646568@l */
/* 80505B58  C0 06 00 00 */	lfs f0, 0(r6)
/* 80505B5C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80505B60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80505B64  7C 9F 23 78 */	mr r31, r4
/* 80505B68  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80505B6C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80505B70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80505B74  7C 7E 1B 78 */	mr r30, r3
/* 80505B78  38 C1 00 08 */	addi r6, r1, 8
/* 80505B7C  38 80 00 85 */	li r4, 0x85
/* 80505B80  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 80505B84  90 03 0D 18 */	stw r0, 0xd18(r3)
/* 80505B88  38 00 00 00 */	li r0, 0
/* 80505B8C  D0 03 0D 1C */	stfs f0, 0xd1c(r3)
/* 80505B90  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 80505B94  4B FD 43 CD */	bl Player_actor_SetupItem_Base1
/* 80505B98  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80505B9C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80505BA0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80505BA4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80505BA8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80505BAC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80505BB0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80505BB4  7F C3 F3 78 */	mr r3, r30
/* 80505BB8  FC 40 08 90 */	fmr f2, f1
/* 80505BBC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80505BC0  7F E4 FB 78 */	mr r4, r31
/* 80505BC4  38 A0 00 85 */	li r5, 0x85
/* 80505BC8  38 E0 00 02 */	li r7, 2
/* 80505BCC  4B FD 0B 2D */	bl Player_actor_InitAnimation_Base1
/* 80505BD0  7F C3 F3 78 */	mr r3, r30
/* 80505BD4  38 80 00 04 */	li r4, 4
/* 80505BD8  4B FC F8 39 */	bl Player_actor_set_eye_pattern
/* 80505BDC  7F C3 F3 78 */	mr r3, r30
/* 80505BE0  38 80 00 04 */	li r4, 4
/* 80505BE4  4B FC F9 35 */	bl Player_actor_set_mouth_pattern
/* 80505BE8  7F C3 F3 78 */	mr r3, r30
/* 80505BEC  7F E4 FB 78 */	mr r4, r31
/* 80505BF0  4B FC FD 09 */	bl Player_actor_setup_main_Base
/* 80505BF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505BF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80505BFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80505C00  7C 08 03 A6 */	mtlr r0
/* 80505C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80505C08  4E 80 00 20 */	blr 
