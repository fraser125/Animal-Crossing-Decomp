lbl_804E9018:
/* 804E9018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E901C  7C 08 02 A6 */	mflr r0
/* 804E9020  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9028  7C 9F 23 78 */	mr r31, r4
/* 804E902C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9030  7C 7E 1B 78 */	mr r30, r3
/* 804E9034  4B FF FF B1 */	bl Player_actor_able_request_proc_index_fromWade_common
/* 804E9038  2C 03 00 00 */	cmpwi r3, 0
/* 804E903C  41 82 00 2C */	beq lbl_804E9068
/* 804E9040  7F C3 F3 78 */	mr r3, r30
/* 804E9044  4B FE C3 29 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804E9048  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E904C  7F E3 FB 78 */	mr r3, r31
/* 804E9050  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E9054  38 9E 0D 28 */	addi r4, r30, 0xd28
/* 804E9058  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E905C  38 A0 00 06 */	li r5, 6
/* 804E9060  38 C0 00 01 */	li r6, 1
/* 804E9064  4B FF CF ED */	bl func_804E6050
lbl_804E9068:
/* 804E9068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E906C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9070  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9074  7C 08 03 A6 */	mtlr r0
/* 804E9078  38 21 00 10 */	addi r1, r1, 0x10
/* 804E907C  4E 80 00 20 */	blr 
