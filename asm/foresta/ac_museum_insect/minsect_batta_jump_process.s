lbl_80461DE0:
/* 80461DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80461DE4  7C 08 02 A6 */	mflr r0
/* 80461DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80461DF0  7C 9F 23 78 */	mr r31, r4
/* 80461DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80461DF8  7C 7E 1B 78 */	mr r30, r3
/* 80461DFC  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80461E00  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 80461E04  4B FA A1 FD */	bl atans_table
/* 80461E08  7C 03 00 D0 */	neg r0, r3
/* 80461E0C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80461E10  B0 1E 00 68 */	sth r0, 0x68(r30)
/* 80461E14  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80461E18  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80461E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461E20  40 80 00 28 */	bge lbl_80461E48
/* 80461E24  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 80461E28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80461E2C  41 82 00 1C */	beq lbl_80461E48
/* 80461E30  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80461E34  38 00 00 00 */	li r0, 0
/* 80461E38  7F C3 F3 78 */	mr r3, r30
/* 80461E3C  7F E4 FB 78 */	mr r4, r31
/* 80461E40  B0 1E 00 68 */	sth r0, 0x68(r30)
/* 80461E44  4B FF F9 15 */	bl minsect_batta_normal_process_init
lbl_80461E48:
/* 80461E48  7F C3 F3 78 */	mr r3, r30
/* 80461E4C  4B FF F7 0D */	bl mi_batta_hane_anime
/* 80461E50  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 80461E54  2C 00 00 00 */	cmpwi r0, 0
/* 80461E58  41 81 00 0C */	bgt lbl_80461E64
/* 80461E5C  38 00 00 07 */	li r0, 7
/* 80461E60  B0 1E 00 7C */	sth r0, 0x7c(r30)
lbl_80461E64:
/* 80461E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80461E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80461E6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80461E70  7C 08 03 A6 */	mtlr r0
/* 80461E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80461E78  4E 80 00 20 */	blr 
