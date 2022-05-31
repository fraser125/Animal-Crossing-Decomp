lbl_804ABD68:
/* 804ABD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABD6C  7C 08 02 A6 */	mflr r0
/* 804ABD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABD74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ABD78  7C 9F 23 78 */	mr r31, r4
/* 804ABD7C  38 80 00 08 */	li r4, 8
/* 804ABD80  93 C1 00 08 */	stw r30, 8(r1)
/* 804ABD84  7C 7E 1B 78 */	mr r30, r3
/* 804ABD88  38 60 00 0F */	li r3, 0xf
/* 804ABD8C  4B EF 20 41 */	bl mEv_get_save_area
/* 804ABD90  3C A0 80 69 */	lis r5, tableX_732@ha /* 0x8068F38C@ha */
/* 804ABD94  3C 80 80 69 */	lis r4, tableZ@ha /* 0x8068F394@ha */
/* 804ABD98  57 E7 08 3C */	slwi r7, r31, 1
/* 804ABD9C  A8 C3 00 04 */	lha r6, 4(r3)
/* 804ABDA0  38 A5 F3 8C */	addi r5, r5, tableX_732@l /* 0x8068F38C@l */
/* 804ABDA4  38 84 F3 94 */	addi r4, r4, tableZ@l /* 0x8068F394@l */
/* 804ABDA8  7C 05 3A AE */	lhax r0, r5, r7
/* 804ABDAC  7C 06 02 14 */	add r0, r6, r0
/* 804ABDB0  B0 1E 09 A2 */	sth r0, 0x9a2(r30)
/* 804ABDB4  A8 63 00 06 */	lha r3, 6(r3)
/* 804ABDB8  7C 04 3A AE */	lhax r0, r4, r7
/* 804ABDBC  7C 03 02 14 */	add r0, r3, r0
/* 804ABDC0  B0 1E 09 A4 */	sth r0, 0x9a4(r30)
/* 804ABDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ABDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABDCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ABDD0  7C 08 03 A6 */	mtlr r0
/* 804ABDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABDD8  4E 80 00 20 */	blr 
