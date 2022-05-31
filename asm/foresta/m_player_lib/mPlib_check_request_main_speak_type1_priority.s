lbl_803DB02C:
/* 803DB02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB030  7C 08 02 A6 */	mflr r0
/* 803DB034  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB03C  3B E0 00 00 */	li r31, 0
/* 803DB040  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB044  7C 7E 1B 78 */	mr r30, r3
/* 803DB048  4B FF E5 F9 */	bl get_player_actor_withoutCheck
/* 803DB04C  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB050  7F C3 F3 78 */	mr r3, r30
/* 803DB054  38 80 00 13 */	li r4, 0x13
/* 803DB058  7D 89 03 A6 */	mtctr r12
/* 803DB05C  4E 80 04 21 */	bctrl 
/* 803DB060  2C 03 00 00 */	cmpwi r3, 0
/* 803DB064  40 81 00 28 */	ble lbl_803DB08C
/* 803DB068  7F C3 F3 78 */	mr r3, r30
/* 803DB06C  4B FF E5 D5 */	bl get_player_actor_withoutCheck
/* 803DB070  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB074  38 60 00 41 */	li r3, 0x41
/* 803DB078  7D 89 03 A6 */	mtctr r12
/* 803DB07C  4E 80 04 21 */	bctrl 
/* 803DB080  2C 03 00 00 */	cmpwi r3, 0
/* 803DB084  40 82 00 08 */	bne lbl_803DB08C
/* 803DB088  3B E0 00 01 */	li r31, 1
lbl_803DB08C:
/* 803DB08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB090  7F E3 FB 78 */	mr r3, r31
/* 803DB094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB098  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB09C  7C 08 03 A6 */	mtlr r0
/* 803DB0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB0A4  4E 80 00 20 */	blr 
