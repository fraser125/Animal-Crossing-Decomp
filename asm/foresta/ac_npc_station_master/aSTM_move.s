lbl_8057FCD0:
/* 8057FCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FCD4  7C 08 02 A6 */	mflr r0
/* 8057FCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FCDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FCE0  7C 9F 23 78 */	mr r31, r4
/* 8057FCE4  93 C1 00 08 */	stw r30, 8(r1)
/* 8057FCE8  7C 7E 1B 78 */	mr r30, r3
/* 8057FCEC  7F E3 FB 78 */	mr r3, r31
/* 8057FCF0  4B E5 99 81 */	bl mPlib_get_player_actor_main_index
/* 8057FCF4  2C 03 00 4B */	cmpwi r3, 0x4b
/* 8057FCF8  41 82 00 40 */	beq lbl_8057FD38
/* 8057FCFC  80 9E 09 98 */	lwz r4, 0x998(r30)
/* 8057FD00  3C C0 80 65 */	lis r6, lit_716@ha /* 0x80649A48@ha */
/* 8057FD04  3C A0 80 65 */	lis r5, lit_717@ha /* 0x80649A4C@ha */
/* 8057FD08  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8057FD0C  C0 66 9A 48 */	lfs f3, lit_716@l(r6)  /* 0x80649A48@l */
/* 8057FD10  3C 60 80 65 */	lis r3, lit_718@ha /* 0x80649A50@ha */
/* 8057FD14  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8057FD18  38 80 00 00 */	li r4, 0
/* 8057FD1C  C0 45 9A 4C */	lfs f2, lit_717@l(r5)  /* 0x80649A4C@l */
/* 8057FD20  EC 23 08 2A */	fadds f1, f3, f1
/* 8057FD24  C0 63 9A 50 */	lfs f3, lit_718@l(r3)  /* 0x80649A50@l */
/* 8057FD28  7F E3 FB 78 */	mr r3, r31
/* 8057FD2C  EC 42 00 2A */	fadds f2, f2, f0
/* 8057FD30  4B E5 B0 AD */	bl mPlib_request_main_demo_walk_type1
/* 8057FD34  48 00 00 14 */	b lbl_8057FD48
lbl_8057FD38:
/* 8057FD38  7F C3 F3 78 */	mr r3, r30
/* 8057FD3C  7F E4 FB 78 */	mr r4, r31
/* 8057FD40  38 A0 00 10 */	li r5, 0x10
/* 8057FD44  48 00 06 61 */	bl aSTM_setup_think_proc
lbl_8057FD48:
/* 8057FD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FD4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FD50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057FD54  7C 08 03 A6 */	mtlr r0
/* 8057FD58  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FD5C  4E 80 00 20 */	blr 
