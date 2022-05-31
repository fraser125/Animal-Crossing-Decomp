lbl_8049A310:
/* 8049A310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A314  7C 08 02 A6 */	mflr r0
/* 8049A318  38 80 00 01 */	li r4, 1
/* 8049A31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049A324  3B E0 00 00 */	li r31, 0
/* 8049A328  93 C1 00 08 */	stw r30, 8(r1)
/* 8049A32C  7C 7E 1B 78 */	mr r30, r3
/* 8049A330  38 60 00 1D */	li r3, 0x1d
/* 8049A334  4B F0 37 CD */	bl mEv_check_status
/* 8049A338  2C 03 00 00 */	cmpwi r3, 0
/* 8049A33C  40 82 00 18 */	bne lbl_8049A354
/* 8049A340  38 60 00 36 */	li r3, 0x36
/* 8049A344  38 80 00 01 */	li r4, 1
/* 8049A348  4B F0 37 B9 */	bl mEv_check_status
/* 8049A34C  2C 03 00 00 */	cmpwi r3, 0
/* 8049A350  41 82 00 4C */	beq lbl_8049A39C
lbl_8049A354:
/* 8049A354  3C 60 80 69 */	lis r3, chk_kind@ha /* 0x8068CCB4@ha */
/* 8049A358  38 00 00 03 */	li r0, 3
/* 8049A35C  38 83 CC B4 */	addi r4, r3, chk_kind@l /* 0x8068CCB4@l */
/* 8049A360  38 60 00 00 */	li r3, 0
/* 8049A364  7C 09 03 A6 */	mtctr r0
lbl_8049A368:
/* 8049A368  7C A4 18 2E */	lwzx r5, r4, r3
/* 8049A36C  7C A0 F0 38 */	and r0, r5, r30
/* 8049A370  7C 05 00 40 */	cmplw r5, r0
/* 8049A374  40 82 00 20 */	bne lbl_8049A394
/* 8049A378  4B BC 29 7D */	bl fqrand
/* 8049A37C  3C 60 80 64 */	lis r3, lit_769@ha /* 0x80644D00@ha */
/* 8049A380  C0 03 4D 00 */	lfs f0, lit_769@l(r3)  /* 0x80644D00@l */
/* 8049A384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049A388  40 80 00 14 */	bge lbl_8049A39C
/* 8049A38C  3B E0 00 01 */	li r31, 1
/* 8049A390  48 00 00 0C */	b lbl_8049A39C
lbl_8049A394:
/* 8049A394  38 63 00 04 */	addi r3, r3, 4
/* 8049A398  42 00 FF D0 */	bdnz lbl_8049A368
lbl_8049A39C:
/* 8049A39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A3A0  7F E3 FB 78 */	mr r3, r31
/* 8049A3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049A3A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049A3AC  7C 08 03 A6 */	mtlr r0
/* 8049A3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A3B4  4E 80 00 20 */	blr 
