lbl_80414144:
/* 80414144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80414148  7C 08 02 A6 */	mflr r0
/* 8041414C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80414150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80414154  7C 9F 23 78 */	mr r31, r4
/* 80414158  93 C1 00 08 */	stw r30, 8(r1)
/* 8041415C  7C 7E 1B 78 */	mr r30, r3
/* 80414160  7F E3 FB 78 */	mr r3, r31
/* 80414164  4B FC 54 DD */	bl get_player_actor_withoutCheck
/* 80414168  28 03 00 00 */	cmplwi r3, 0
/* 8041416C  41 82 00 2C */	beq lbl_80414198
/* 80414170  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80414174  3C 80 80 64 */	lis r4, lit_505@ha /* 0x80643A9C@ha */
/* 80414178  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8041417C  C0 04 3A 9C */	lfs f0, lit_505@l(r4)  /* 0x80643A9C@l */
/* 80414180  EC 22 08 28 */	fsubs f1, f2, f1
/* 80414184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80414188  40 81 00 10 */	ble lbl_80414198
/* 8041418C  7F C3 F3 78 */	mr r3, r30
/* 80414190  7F E4 FB 78 */	mr r4, r31
/* 80414194  4B FF FB 5D */	bl Ac_Balloon_request_hide
lbl_80414198:
/* 80414198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041419C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804141A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804141A4  7C 08 03 A6 */	mtlr r0
/* 804141A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804141AC  4E 80 00 20 */	blr 