lbl_8049FD54:
/* 8049FD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049FD58  7C 08 02 A6 */	mflr r0
/* 8049FD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049FD60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049FD64  7C 9F 23 78 */	mr r31, r4
/* 8049FD68  93 C1 00 08 */	stw r30, 8(r1)
/* 8049FD6C  7C 7E 1B 78 */	mr r30, r3
/* 8049FD70  7F E3 FB 78 */	mr r3, r31
/* 8049FD74  4B F3 98 CD */	bl get_player_actor_withoutCheck
/* 8049FD78  28 03 00 00 */	cmplwi r3, 0
/* 8049FD7C  41 82 00 0C */	beq lbl_8049FD88
/* 8049FD80  38 C3 00 28 */	addi r6, r3, 0x28
/* 8049FD84  48 00 00 08 */	b lbl_8049FD8C
lbl_8049FD88:
/* 8049FD88  38 DE 00 28 */	addi r6, r30, 0x28
lbl_8049FD8C:
/* 8049FD8C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8049FD90  7F C3 F3 78 */	mr r3, r30
/* 8049FD94  80 06 00 04 */	lwz r0, 4(r6)
/* 8049FD98  7F E4 FB 78 */	mr r4, r31
/* 8049FD9C  90 BE 00 28 */	stw r5, 0x28(r30)
/* 8049FDA0  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8049FDA4  80 06 00 08 */	lwz r0, 8(r6)
/* 8049FDA8  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8049FDAC  4B FF FB BD */	bl aSL_JudgeRenewShop
/* 8049FDB0  7F C3 F3 78 */	mr r3, r30
/* 8049FDB4  7F E4 FB 78 */	mr r4, r31
/* 8049FDB8  38 A0 00 06 */	li r5, 6
/* 8049FDBC  4B FF FE A1 */	bl aSL_ExchangeShopGoodsInGame
/* 8049FDC0  4B FF FF 41 */	bl aSL_ReportShopOpen2Event
/* 8049FDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049FDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049FDCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049FDD0  7C 08 03 A6 */	mtlr r0
/* 8049FDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049FDD8  4E 80 00 20 */	blr 
