lbl_80374348:
/* 80374348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037434C  7C 08 02 A6 */	mflr r0
/* 80374350  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80374358  7C 9F 23 78 */	mr r31, r4
/* 8037435C  93 C1 00 08 */	stw r30, 8(r1)
/* 80374360  7C 7E 1B 78 */	mr r30, r3
/* 80374364  7C A3 2B 78 */	mr r3, r5
/* 80374368  48 06 52 D9 */	bl get_player_actor_withoutCheck
/* 8037436C  A8 9E 00 B6 */	lha r4, 0xb6(r30)
/* 80374370  A8 A3 00 DE */	lha r5, 0xde(r3)
/* 80374374  3C 64 00 01 */	addis r3, r4, 1
/* 80374378  38 03 80 00 */	addi r0, r3, -32768
/* 8037437C  7C 00 07 34 */	extsh r0, r0
/* 80374380  7C 05 00 50 */	subf r0, r5, r0
/* 80374384  7C 03 07 35 */	extsh. r3, r0
/* 80374388  7C 03 00 D0 */	neg r0, r3
/* 8037438C  41 80 00 08 */	blt lbl_80374394
/* 80374390  7C 60 1B 78 */	mr r0, r3
lbl_80374394:
/* 80374394  7F E4 07 34 */	extsh r4, r31
/* 80374398  7C 80 02 78 */	xor r0, r4, r0
/* 8037439C  7C 03 0E 70 */	srawi r3, r0, 1
/* 803743A0  7C 00 20 38 */	and r0, r0, r4
/* 803743A4  7C 00 18 50 */	subf r0, r0, r3
/* 803743A8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803743AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803743B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803743B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803743B8  7C 08 03 A6 */	mtlr r0
/* 803743BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803743C0  4E 80 00 20 */	blr 
