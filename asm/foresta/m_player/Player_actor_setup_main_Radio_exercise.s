lbl_80506B90:
/* 80506B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506B94  7C 08 02 A6 */	mflr r0
/* 80506B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80506BA0  7C 9F 23 78 */	mr r31, r4
/* 80506BA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80506BA8  7C 7E 1B 78 */	mr r30, r3
/* 80506BAC  80 C3 0D 60 */	lwz r6, 0xd60(r3)
/* 80506BB0  2C 06 00 00 */	cmpwi r6, 0
/* 80506BB4  41 80 00 0C */	blt lbl_80506BC0
/* 80506BB8  2C 06 00 12 */	cmpwi r6, 0x12
/* 80506BBC  41 80 00 08 */	blt lbl_80506BC4
lbl_80506BC0:
/* 80506BC0  38 C0 00 00 */	li r6, 0
lbl_80506BC4:
/* 80506BC4  90 DE 0D 18 */	stw r6, 0xd18(r30)
/* 80506BC8  38 00 00 01 */	li r0, 1
/* 80506BCC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80506BD0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80506BD4  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 80506BD8  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 80506BDC  38 00 00 00 */	li r0, 0
/* 80506BE0  C0 23 65 64 */	lfs f1, lit_603@l(r3)  /* 0x80646564@l */
/* 80506BE4  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 80506BE8  3C 80 80 65 */	lis r4, anime_index_data@ha /* 0x8064859C@ha */
/* 80506BEC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80506BF0  C0 65 00 00 */	lfs f3, 0(r5)
/* 80506BF4  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 80506BF8  38 00 FF FF */	li r0, -1
/* 80506BFC  38 84 85 9C */	addi r4, r4, anime_index_data@l /* 0x8064859C@l */
/* 80506C00  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80506C04  90 1E 12 3C */	stw r0, 0x123c(r30)
/* 80506C08  FC 40 08 90 */	fmr f2, f1
/* 80506C0C  7C A4 30 AE */	lbzx r5, r4, r6
/* 80506C10  7F C3 F3 78 */	mr r3, r30
/* 80506C14  D0 7E 12 40 */	stfs f3, 0x1240(r30)
/* 80506C18  7F E4 FB 78 */	mr r4, r31
/* 80506C1C  7C A6 2B 78 */	mr r6, r5
/* 80506C20  38 E0 00 00 */	li r7, 0
/* 80506C24  39 00 00 00 */	li r8, 0
/* 80506C28  4B FC FB E9 */	bl Player_actor_InitAnimation_Base2
/* 80506C2C  C0 1E 0D 64 */	lfs f0, 0xd64(r30)
/* 80506C30  7F C3 F3 78 */	mr r3, r30
/* 80506C34  7F E4 FB 78 */	mr r4, r31
/* 80506C38  D0 1E 01 80 */	stfs f0, 0x180(r30)
/* 80506C3C  C0 1E 0D 64 */	lfs f0, 0xd64(r30)
/* 80506C40  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80506C44  4B FC EC B5 */	bl Player_actor_setup_main_Base
/* 80506C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80506C50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80506C54  7C 08 03 A6 */	mtlr r0
/* 80506C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80506C5C  4E 80 00 20 */	blr 
