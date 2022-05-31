lbl_80599FB0:
/* 80599FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599FB4  7C 08 02 A6 */	mflr r0
/* 80599FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599FC0  7C 7F 1B 78 */	mr r31, r3
/* 80599FC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80599FC8  7C 9E 23 78 */	mr r30, r4
/* 80599FCC  4B FF FE 01 */	bl aIGK_check_patience
/* 80599FD0  2C 03 00 01 */	cmpwi r3, 1
/* 80599FD4  40 82 00 18 */	bne lbl_80599FEC
/* 80599FD8  7F E3 FB 78 */	mr r3, r31
/* 80599FDC  7F C5 F3 78 */	mr r5, r30
/* 80599FE0  38 80 00 00 */	li r4, 0
/* 80599FE4  48 00 07 3D */	bl aIGK_setupAction
/* 80599FE8  48 00 00 4C */	b lbl_8059A034
lbl_80599FEC:
/* 80599FEC  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 80599FF0  38 03 FF FF */	addi r0, r3, -1
/* 80599FF4  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80599FF8  80 1F 02 28 */	lwz r0, 0x228(r31)
/* 80599FFC  2C 00 00 00 */	cmpwi r0, 0
/* 8059A000  41 81 00 18 */	bgt lbl_8059A018
/* 8059A004  7F E3 FB 78 */	mr r3, r31
/* 8059A008  7F C5 F3 78 */	mr r5, r30
/* 8059A00C  38 80 00 03 */	li r4, 3
/* 8059A010  48 00 07 11 */	bl aIGK_setupAction
/* 8059A014  48 00 00 20 */	b lbl_8059A034
lbl_8059A018:
/* 8059A018  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8059A01C  38 7F 00 36 */	addi r3, r31, 0x36
/* 8059A020  38 A0 06 00 */	li r5, 0x600
/* 8059A024  7C 04 07 34 */	extsh r4, r0
/* 8059A028  4B E2 0B 1D */	bl chase_angle
/* 8059A02C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8059A030  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059A034:
/* 8059A034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A03C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059A040  7C 08 03 A6 */	mtlr r0
/* 8059A044  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A048  4E 80 00 20 */	blr 
