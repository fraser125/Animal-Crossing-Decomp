lbl_80508BA4:
/* 80508BA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80508BA8  7C 08 02 A6 */	mflr r0
/* 80508BAC  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 80508BB0  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80508BB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80508BB8  C0 06 65 68 */	lfs f0, lit_604@l(r6)  /* 0x80646568@l */
/* 80508BBC  38 C1 00 08 */	addi r6, r1, 8
/* 80508BC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80508BC4  7C 9F 23 78 */	mr r31, r4
/* 80508BC8  38 85 83 54 */	addi r4, r5, lit_7381@l /* 0x80648354@l */
/* 80508BCC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80508BD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80508BD4  7C 7E 1B 78 */	mr r30, r3
/* 80508BD8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80508BDC  38 80 00 00 */	li r4, 0
/* 80508BE0  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 80508BE4  4B FD 13 7D */	bl Player_actor_SetupItem_Base1
/* 80508BE8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80508BEC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80508BF0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80508BF4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80508BF8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80508BFC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80508C00  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80508C04  7F C3 F3 78 */	mr r3, r30
/* 80508C08  FC 40 08 90 */	fmr f2, f1
/* 80508C0C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80508C10  80 E1 00 08 */	lwz r7, 8(r1)
/* 80508C14  7F E4 FB 78 */	mr r4, r31
/* 80508C18  38 A0 00 00 */	li r5, 0
/* 80508C1C  4B FC DA DD */	bl Player_actor_InitAnimation_Base1
/* 80508C20  7F C3 F3 78 */	mr r3, r30
/* 80508C24  7F E4 FB 78 */	mr r4, r31
/* 80508C28  4B FC CC D1 */	bl Player_actor_setup_main_Base
/* 80508C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80508C30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80508C34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80508C38  7C 08 03 A6 */	mtlr r0
/* 80508C3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80508C40  4E 80 00 20 */	blr 
