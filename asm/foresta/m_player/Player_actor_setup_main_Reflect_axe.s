lbl_804F0B7C:
/* 804F0B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0B80  7C 08 02 A6 */	mflr r0
/* 804F0B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0B8C  7C 9F 23 78 */	mr r31, r4
/* 804F0B90  93 C1 00 08 */	stw r30, 8(r1)
/* 804F0B94  7C 7E 1B 78 */	mr r30, r3
/* 804F0B98  38 7E 0D 60 */	addi r3, r30, 0xd60
/* 804F0B9C  38 9E 0D 18 */	addi r4, r30, 0xd18
/* 804F0BA0  4B FF FF A9 */	bl Player_actor_setup_main_Reflect_axe_common
/* 804F0BA4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F0BA8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F0BAC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F0BB0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F0BB4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F0BB8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F0BBC  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F0BC0  7F C3 F3 78 */	mr r3, r30
/* 804F0BC4  FC 40 08 90 */	fmr f2, f1
/* 804F0BC8  7F E4 FB 78 */	mr r4, r31
/* 804F0BCC  38 A0 00 3C */	li r5, 0x3c
/* 804F0BD0  38 C0 00 3C */	li r6, 0x3c
/* 804F0BD4  38 E0 00 00 */	li r7, 0
/* 804F0BD8  39 00 00 00 */	li r8, 0
/* 804F0BDC  4B FE 5C 35 */	bl Player_actor_InitAnimation_Base2
/* 804F0BE0  7F C3 F3 78 */	mr r3, r30
/* 804F0BE4  7F E4 FB 78 */	mr r4, r31
/* 804F0BE8  4B FE 4D 11 */	bl Player_actor_setup_main_Base
/* 804F0BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0BF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0BF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F0BF8  7C 08 03 A6 */	mtlr r0
/* 804F0BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0C00  4E 80 00 20 */	blr 
