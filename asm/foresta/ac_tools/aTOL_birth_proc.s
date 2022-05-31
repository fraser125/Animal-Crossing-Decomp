lbl_804ABFF8:
/* 804ABFF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804ABFFC  7C 08 02 A6 */	mflr r0
/* 804AC000  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AC004  39 61 00 30 */	addi r11, r1, 0x30
/* 804AC008  4B BE EE C1 */	bl func_8009AEC8
/* 804AC00C  7C BC 2B 78 */	mr r28, r5
/* 804AC010  7C 9B 23 78 */	mr r27, r4
/* 804AC014  7C 7A 1B 78 */	mr r26, r3
/* 804AC018  7C DD 33 78 */	mr r29, r6
/* 804AC01C  7C FE 3B 78 */	mr r30, r7
/* 804AC020  7D 1F 43 78 */	mr r31, r8
/* 804AC024  7F 84 E3 78 */	mr r4, r28
/* 804AC028  4B FF FF 69 */	bl func_804ABF90
/* 804AC02C  38 00 00 00 */	li r0, 0
/* 804AC030  3C 60 80 64 */	lis r3, data_80645EA4@ha /* 0x80645EA4@ha */
/* 804AC034  90 01 00 08 */	stw r0, 8(r1)
/* 804AC038  38 80 FF FF */	li r4, -1
/* 804AC03C  C0 23 5E A4 */	lfs f1, data_80645EA4@l(r3)  /* 0x80645EA4@l */
/* 804AC040  3C 60 80 69 */	lis r3, profile_table@ha /* 0x8068F434@ha */
/* 804AC044  93 C1 00 0C */	stw r30, 0xc(r1)
/* 804AC048  57 40 08 3C */	slwi r0, r26, 1
/* 804AC04C  FC 40 08 90 */	fmr f2, f1
/* 804AC050  38 63 F4 34 */	addi r3, r3, profile_table@l /* 0x8068F434@l */
/* 804AC054  90 81 00 10 */	stw r4, 0x10(r1)
/* 804AC058  FC 60 08 90 */	fmr f3, f1
/* 804AC05C  7F 84 E3 78 */	mr r4, r28
/* 804AC060  7F A5 EB 78 */	mr r5, r29
/* 804AC064  7C C3 02 AE */	lhax r6, r3, r0
/* 804AC068  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 804AC06C  38 E0 00 00 */	li r7, 0
/* 804AC070  39 00 00 00 */	li r8, 0
/* 804AC074  39 20 00 00 */	li r9, 0
/* 804AC078  39 40 FF FF */	li r10, -1
/* 804AC07C  4B EC 98 41 */	bl Actor_info_make_child_actor
/* 804AC080  28 03 00 00 */	cmplwi r3, 0
/* 804AC084  41 82 00 0C */	beq lbl_804AC090
/* 804AC088  93 63 01 C0 */	stw r27, 0x1c0(r3)
/* 804AC08C  93 43 01 74 */	stw r26, 0x174(r3)
lbl_804AC090:
/* 804AC090  28 1F 00 00 */	cmplwi r31, 0
/* 804AC094  41 82 00 0C */	beq lbl_804AC0A0
/* 804AC098  38 00 FF FF */	li r0, -1
/* 804AC09C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804AC0A0:
/* 804AC0A0  39 61 00 30 */	addi r11, r1, 0x30
/* 804AC0A4  4B BE EE 71 */	bl func_8009AF14
/* 804AC0A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AC0AC  7C 08 03 A6 */	mtlr r0
/* 804AC0B0  38 21 00 30 */	addi r1, r1, 0x30
/* 804AC0B4  4E 80 00 20 */	blr 
