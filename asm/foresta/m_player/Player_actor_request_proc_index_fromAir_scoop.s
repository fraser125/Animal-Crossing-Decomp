lbl_804F9598:
/* 804F9598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F959C  7C 08 02 A6 */	mflr r0
/* 804F95A0  2C 05 00 00 */	cmpwi r5, 0
/* 804F95A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F95A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F95AC  7C 9F 23 78 */	mr r31, r4
/* 804F95B0  41 82 00 2C */	beq lbl_804F95DC
/* 804F95B4  4B FD BD B9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F95B8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F95BC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F95C0  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F95C4  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F95C8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F95CC  7F E3 FB 78 */	mr r3, r31
/* 804F95D0  38 80 00 00 */	li r4, 0
/* 804F95D4  38 A0 00 01 */	li r5, 1
/* 804F95D8  4B FE C6 25 */	bl func_804E5BFC
lbl_804F95DC:
/* 804F95DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F95E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F95E4  7C 08 03 A6 */	mtlr r0
/* 804F95E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F95EC  4E 80 00 20 */	blr 
