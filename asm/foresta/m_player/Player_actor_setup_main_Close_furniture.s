lbl_804EB9B0:
/* 804EB9B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EB9B4  7C 08 02 A6 */	mflr r0
/* 804EB9B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EB9BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB9C0  4B BA F5 11 */	bl func_8009AED0
/* 804EB9C4  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804EB9C8  3C A0 80 64 */	lis r5, lit_801@ha /* 0x80646674@ha */
/* 804EB9CC  7C 7C 1B 78 */	mr r28, r3
/* 804EB9D0  3C 60 80 65 */	lis r3, lit_6387@ha /* 0x80648074@ha */
/* 804EB9D4  38 E6 65 68 */	addi r7, r6, lit_604@l /* 0x80646568@l */
/* 804EB9D8  38 C5 66 74 */	addi r6, r5, lit_801@l /* 0x80646674@l */
/* 804EB9DC  38 A3 80 74 */	addi r5, r3, lit_6387@l /* 0x80648074@l */
/* 804EB9E0  3B FC 01 74 */	addi r31, r28, 0x174
/* 804EB9E4  7C 9D 23 78 */	mr r29, r4
/* 804EB9E8  83 DC 0D 60 */	lwz r30, 0xd60(r28)
/* 804EB9EC  C0 27 00 00 */	lfs f1, 0(r7)
/* 804EB9F0  7F E3 FB 78 */	mr r3, r31
/* 804EB9F4  C0 46 00 00 */	lfs f2, 0(r6)
/* 804EB9F8  38 80 00 00 */	li r4, 0
/* 804EB9FC  C0 65 00 00 */	lfs f3, 0(r5)
/* 804EBA00  38 A0 00 00 */	li r5, 0
/* 804EBA04  38 C0 40 00 */	li r6, 0x4000
/* 804EBA08  4B E8 6A E9 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EBA0C  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804EBA10  38 7C 00 28 */	addi r3, r28, 0x28
/* 804EBA14  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804EBA18  7C 64 1B 78 */	mr r4, r3
/* 804EBA1C  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 804EBA20  7F E7 FB 78 */	mr r7, r31
/* 804EBA24  38 C0 00 00 */	li r6, 0
/* 804EBA28  39 00 00 01 */	li r8, 1
/* 804EBA2C  4B E8 6A ED */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EBA30  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EBA34  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EBA38  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EBA3C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EBA40  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EBA44  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EBA48  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EBA4C  7F 83 E3 78 */	mr r3, r28
/* 804EBA50  FC 40 08 90 */	fmr f2, f1
/* 804EBA54  7F A4 EB 78 */	mr r4, r29
/* 804EBA58  7F C5 F3 78 */	mr r5, r30
/* 804EBA5C  7F C6 F3 78 */	mr r6, r30
/* 804EBA60  38 E0 00 00 */	li r7, 0
/* 804EBA64  39 00 00 00 */	li r8, 0
/* 804EBA68  4B FE AD A9 */	bl Player_actor_InitAnimation_Base2
/* 804EBA6C  7F 83 E3 78 */	mr r3, r28
/* 804EBA70  7F A4 EB 78 */	mr r4, r29
/* 804EBA74  4B FE 9E 85 */	bl Player_actor_setup_main_Base
/* 804EBA78  39 61 00 20 */	addi r11, r1, 0x20
/* 804EBA7C  4B BA F4 A1 */	bl func_8009AF1C
/* 804EBA80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EBA84  7C 08 03 A6 */	mtlr r0
/* 804EBA88  38 21 00 20 */	addi r1, r1, 0x20
/* 804EBA8C  4E 80 00 20 */	blr 
