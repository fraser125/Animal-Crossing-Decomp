lbl_80500B28:
/* 80500B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80500B2C  7C 08 02 A6 */	mflr r0
/* 80500B30  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80500B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80500B38  38 00 00 00 */	li r0, 0
/* 80500B3C  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80500B40  38 A1 00 0C */	addi r5, r1, 0xc
/* 80500B44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80500B48  7C 9F 23 78 */	mr r31, r4
/* 80500B4C  38 80 00 60 */	li r4, 0x60
/* 80500B50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80500B54  7C 7E 1B 78 */	mr r30, r3
/* 80500B58  80 C3 0D 60 */	lwz r6, 0xd60(r3)
/* 80500B5C  80 E3 0D 64 */	lwz r7, 0xd64(r3)
/* 80500B60  90 C3 0D 18 */	stw r6, 0xd18(r3)
/* 80500B64  38 C1 00 08 */	addi r6, r1, 8
/* 80500B68  90 E3 0D 1C */	stw r7, 0xd1c(r3)
/* 80500B6C  80 E3 0D 68 */	lwz r7, 0xd68(r3)
/* 80500B70  90 E3 0D 20 */	stw r7, 0xd20(r3)
/* 80500B74  A0 E3 0D 6C */	lhz r7, 0xd6c(r3)
/* 80500B78  B0 E3 0D 24 */	sth r7, 0xd24(r3)
/* 80500B7C  80 E3 0D 70 */	lwz r7, 0xd70(r3)
/* 80500B80  90 E3 0D 28 */	stw r7, 0xd28(r3)
/* 80500B84  80 E3 0D 74 */	lwz r7, 0xd74(r3)
/* 80500B88  90 E3 0D 2C */	stw r7, 0xd2c(r3)
/* 80500B8C  90 03 0D 30 */	stw r0, 0xd30(r3)
/* 80500B90  B0 03 0D 34 */	sth r0, 0xd34(r3)
/* 80500B94  90 03 0D 38 */	stw r0, 0xd38(r3)
/* 80500B98  4B FD 93 C9 */	bl Player_actor_SetupItem_Base1
/* 80500B9C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80500BA0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80500BA4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80500BA8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80500BAC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80500BB0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80500BB4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80500BB8  7F C3 F3 78 */	mr r3, r30
/* 80500BBC  FC 40 08 90 */	fmr f2, f1
/* 80500BC0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80500BC4  81 01 00 08 */	lwz r8, 8(r1)
/* 80500BC8  7F E4 FB 78 */	mr r4, r31
/* 80500BCC  38 A0 00 60 */	li r5, 0x60
/* 80500BD0  38 E0 00 00 */	li r7, 0
/* 80500BD4  4B FD 5C 3D */	bl Player_actor_InitAnimation_Base2
/* 80500BD8  7F C3 F3 78 */	mr r3, r30
/* 80500BDC  7F E4 FB 78 */	mr r4, r31
/* 80500BE0  4B FD 4D 19 */	bl Player_actor_setup_main_Base
/* 80500BE4  38 60 00 08 */	li r3, 8
/* 80500BE8  4B EB 34 31 */	bl mISL_SetNowPlayerAction
/* 80500BEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80500BF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80500BF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80500BF8  7C 08 03 A6 */	mtlr r0
/* 80500BFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80500C00  4E 80 00 20 */	blr 
