lbl_804F5E10:
/* 804F5E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5E14  7C 08 02 A6 */	mflr r0
/* 804F5E18  2C 05 00 00 */	cmpwi r5, 0
/* 804F5E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5E24  7C 9F 23 78 */	mr r31, r4
/* 804F5E28  41 82 00 34 */	beq lbl_804F5E5C
/* 804F5E2C  2C 06 00 00 */	cmpwi r6, 0
/* 804F5E30  41 82 00 2C */	beq lbl_804F5E5C
/* 804F5E34  4B FD F5 39 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F5E38  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F5E3C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F5E40  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F5E44  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F5E48  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F5E4C  7F E3 FB 78 */	mr r3, r31
/* 804F5E50  38 80 00 00 */	li r4, 0
/* 804F5E54  38 A0 00 01 */	li r5, 1
/* 804F5E58  4B FE FD A5 */	bl func_804E5BFC
lbl_804F5E5C:
/* 804F5E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5E64  7C 08 03 A6 */	mtlr r0
/* 804F5E68  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5E6C  4E 80 00 20 */	blr 
