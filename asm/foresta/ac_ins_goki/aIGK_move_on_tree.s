lbl_8059A334:
/* 8059A334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A338  7C 08 02 A6 */	mflr r0
/* 8059A33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A344  7C 7F 1B 78 */	mr r31, r3
/* 8059A348  93 C1 00 08 */	stw r30, 8(r1)
/* 8059A34C  7C 9E 23 78 */	mr r30, r4
/* 8059A350  4B FF FA 7D */	bl aIGK_check_patience
/* 8059A354  2C 03 00 01 */	cmpwi r3, 1
/* 8059A358  40 82 00 18 */	bne lbl_8059A370
/* 8059A35C  7F E3 FB 78 */	mr r3, r31
/* 8059A360  7F C5 F3 78 */	mr r5, r30
/* 8059A364  38 80 00 00 */	li r4, 0
/* 8059A368  48 00 03 B9 */	bl aIGK_setupAction
/* 8059A36C  48 00 00 74 */	b lbl_8059A3E0
lbl_8059A370:
/* 8059A370  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8059A374  38 7F 00 DE */	addi r3, r31, 0xde
/* 8059A378  38 A0 00 80 */	li r5, 0x80
/* 8059A37C  7C 04 07 34 */	extsh r4, r0
/* 8059A380  4B E2 07 C5 */	bl chase_angle
/* 8059A384  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 8059A388  38 03 FF FF */	addi r0, r3, -1
/* 8059A38C  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059A390  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 8059A394  2C 00 00 00 */	cmpwi r0, 0
/* 8059A398  41 81 00 48 */	bgt lbl_8059A3E0
/* 8059A39C  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 8059A3A0  38 03 FF FF */	addi r0, r3, -1
/* 8059A3A4  90 1F 02 38 */	stw r0, 0x238(r31)
/* 8059A3A8  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 8059A3AC  2C 00 00 00 */	cmpwi r0, 0
/* 8059A3B0  41 81 00 1C */	bgt lbl_8059A3CC
/* 8059A3B4  80 9F 01 D8 */	lwz r4, 0x1d8(r31)
/* 8059A3B8  7F E3 FB 78 */	mr r3, r31
/* 8059A3BC  7F C5 F3 78 */	mr r5, r30
/* 8059A3C0  38 84 FF FF */	addi r4, r4, -1
/* 8059A3C4  48 00 03 5D */	bl aIGK_setupAction
/* 8059A3C8  48 00 00 18 */	b lbl_8059A3E0
lbl_8059A3CC:
/* 8059A3CC  80 7F 02 34 */	lwz r3, 0x234(r31)
/* 8059A3D0  38 00 00 1E */	li r0, 0x1e
/* 8059A3D4  7C 63 00 D0 */	neg r3, r3
/* 8059A3D8  90 7F 02 34 */	stw r3, 0x234(r31)
/* 8059A3DC  90 1F 02 3C */	stw r0, 0x23c(r31)
lbl_8059A3E0:
/* 8059A3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A3E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059A3EC  7C 08 03 A6 */	mtlr r0
/* 8059A3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A3F4  4E 80 00 20 */	blr 
