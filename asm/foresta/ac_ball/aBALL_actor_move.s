lbl_80413B2C:
/* 80413B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80413B30  7C 08 02 A6 */	mflr r0
/* 80413B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80413B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80413B3C  7C 7F 1B 78 */	mr r31, r3
/* 80413B40  93 C1 00 08 */	stw r30, 8(r1)
/* 80413B44  7C 9E 23 78 */	mr r30, r4
/* 80413B48  4B FF F1 81 */	bl aBALL_House_Tree_Rev_Check
/* 80413B4C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80413B50  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80413B54  40 82 00 38 */	bne lbl_80413B8C
/* 80413B58  88 1F 00 9A */	lbz r0, 0x9a(r31)
/* 80413B5C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80413B60  40 82 00 10 */	bne lbl_80413B70
/* 80413B64  A8 1F 02 08 */	lha r0, 0x208(r31)
/* 80413B68  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80413B6C  41 82 00 0C */	beq lbl_80413B78
lbl_80413B70:
/* 80413B70  7F E3 FB 78 */	mr r3, r31
/* 80413B74  4B F6 08 CD */	bl Actor_delete
lbl_80413B78:
/* 80413B78  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80413B7C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80413B80  C0 23 39 AC */	lfs f1, lit_472@l(r3)  /* 0x806439AC@l */
/* 80413B84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80413B88  41 82 00 88 */	beq lbl_80413C10
lbl_80413B8C:
/* 80413B8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80413B90  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80413B94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80413B98  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80413B9C  3C A3 00 03 */	addis r5, r3, 3
/* 80413BA0  7F E3 FB 78 */	mr r3, r31
/* 80413BA4  90 85 88 6C */	stw r4, -0x7794(r5)
/* 80413BA8  90 05 88 70 */	stw r0, -0x7790(r5)
/* 80413BAC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80413BB0  90 05 88 74 */	stw r0, -0x778c(r5)
/* 80413BB4  4B FF E7 51 */	bl aBALL_position_move
/* 80413BB8  81 9F 01 E0 */	lwz r12, 0x1e0(r31)
/* 80413BBC  7F E3 FB 78 */	mr r3, r31
/* 80413BC0  7F C4 F3 78 */	mr r4, r30
/* 80413BC4  7D 89 03 A6 */	mtctr r12
/* 80413BC8  4E 80 04 21 */	bctrl 
/* 80413BCC  7F E3 FB 78 */	mr r3, r31
/* 80413BD0  4B FF E8 05 */	bl aBALL_BGcheck
/* 80413BD4  7F E3 FB 78 */	mr r3, r31
/* 80413BD8  7F C4 F3 78 */	mr r4, r30
/* 80413BDC  4B FF EB 79 */	bl aBALL_OBJcheck
/* 80413BE0  7F E3 FB 78 */	mr r3, r31
/* 80413BE4  38 9F 01 74 */	addi r4, r31, 0x174
/* 80413BE8  4B F8 1E 0D */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 80413BEC  7F C3 F3 78 */	mr r3, r30
/* 80413BF0  38 9E 23 28 */	addi r4, r30, 0x2328
/* 80413BF4  38 BF 01 74 */	addi r5, r31, 0x174
/* 80413BF8  4B F8 0F A5 */	bl CollisionCheck_setOC
/* 80413BFC  7F E3 FB 78 */	mr r3, r31
/* 80413C00  4B FF FA FD */	bl aBALL_calc_axis
/* 80413C04  7F E3 FB 78 */	mr r3, r31
/* 80413C08  7F C4 F3 78 */	mr r4, r30
/* 80413C0C  4B FF FC 9D */	bl aBALL_status_check
lbl_80413C10:
/* 80413C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80413C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80413C18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80413C1C  7C 08 03 A6 */	mtlr r0
/* 80413C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80413C24  4E 80 00 20 */	blr 
