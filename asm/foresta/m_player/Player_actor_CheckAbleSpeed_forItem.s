lbl_804D9644:
/* 804D9644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9648  7C 08 02 A6 */	mflr r0
/* 804D964C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9650  4B EF FF F1 */	bl get_player_actor_withoutCheck
/* 804D9654  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804D9658  2C 00 00 0B */	cmpwi r0, 0xb
/* 804D965C  40 80 00 30 */	bge lbl_804D968C
/* 804D9660  2C 00 00 08 */	cmpwi r0, 8
/* 804D9664  40 80 00 08 */	bge lbl_804D966C
/* 804D9668  48 00 00 24 */	b lbl_804D968C
lbl_804D966C:
/* 804D966C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804D9670  C0 23 01 80 */	lfs f1, 0x180(r3)
/* 804D9674  C0 04 6C 4C */	lfs f0, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804D9678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D967C  4C 41 13 82 */	cror 2, 1, 2
/* 804D9680  40 82 00 0C */	bne lbl_804D968C
/* 804D9684  38 60 00 00 */	li r3, 0
/* 804D9688  48 00 00 08 */	b lbl_804D9690
lbl_804D968C:
/* 804D968C  38 60 00 01 */	li r3, 1
lbl_804D9690:
/* 804D9690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9694  7C 08 03 A6 */	mtlr r0
/* 804D9698  38 21 00 10 */	addi r1, r1, 0x10
/* 804D969C  4E 80 00 20 */	blr 
