lbl_8054E000:
/* 8054E000  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054E004  7C 08 02 A6 */	mflr r0
/* 8054E008  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054E00C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8054E010  7C 9F 23 78 */	mr r31, r4
/* 8054E014  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8054E018  7C 7E 1B 78 */	mr r30, r3
/* 8054E01C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8054E020  38 61 00 14 */	addi r3, r1, 0x14
/* 8054E024  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8054E028  90 81 00 14 */	stw r4, 0x14(r1)
/* 8054E02C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8054E030  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8054E034  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8054E038  4B FF F0 29 */	bl aNDM_get_zone
/* 8054E03C  28 1F 00 00 */	cmplwi r31, 0
/* 8054E040  98 7E 09 A2 */	stb r3, 0x9a2(r30)
/* 8054E044  41 82 00 28 */	beq lbl_8054E06C
/* 8054E048  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8054E04C  38 61 00 08 */	addi r3, r1, 8
/* 8054E050  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8054E054  90 81 00 08 */	stw r4, 8(r1)
/* 8054E058  90 01 00 0C */	stw r0, 0xc(r1)
/* 8054E05C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8054E060  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054E064  4B FF EF FD */	bl aNDM_get_zone
/* 8054E068  98 7E 09 A4 */	stb r3, 0x9a4(r30)
lbl_8054E06C:
/* 8054E06C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054E070  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8054E074  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8054E078  7C 08 03 A6 */	mtlr r0
/* 8054E07C  38 21 00 30 */	addi r1, r1, 0x30
/* 8054E080  4E 80 00 20 */	blr 
