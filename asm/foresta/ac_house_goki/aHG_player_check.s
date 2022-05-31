lbl_8050B870:
/* 8050B870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B874  7C 08 02 A6 */	mflr r0
/* 8050B878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B880  7C 7F 1B 78 */	mr r31, r3
/* 8050B884  7C 83 23 78 */	mr r3, r4
/* 8050B888  4B EC DD B9 */	bl get_player_actor_withoutCheck
/* 8050B88C  28 03 00 00 */	cmplwi r3, 0
/* 8050B890  38 00 00 00 */	li r0, 0
/* 8050B894  41 82 00 38 */	beq lbl_8050B8CC
/* 8050B898  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8050B89C  3C 60 80 65 */	lis r3, lit_551@ha /* 0x80648E20@ha */
/* 8050B8A0  FC 20 02 10 */	fabs f1, f0
/* 8050B8A4  C0 03 8E 20 */	lfs f0, lit_551@l(r3)  /* 0x80648E20@l */
/* 8050B8A8  FC 20 08 18 */	frsp f1, f1
/* 8050B8AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B8B0  41 80 00 1C */	blt lbl_8050B8CC
/* 8050B8B4  3C 60 80 65 */	lis r3, lit_511@ha /* 0x80648E14@ha */
/* 8050B8B8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8050B8BC  C0 03 8E 14 */	lfs f0, lit_511@l(r3)  /* 0x80648E14@l */
/* 8050B8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B8C4  40 80 00 08 */	bge lbl_8050B8CC
/* 8050B8C8  38 00 00 01 */	li r0, 1
lbl_8050B8CC:
/* 8050B8CC  7C 03 03 78 */	mr r3, r0
/* 8050B8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050B8D8  7C 08 03 A6 */	mtlr r0
/* 8050B8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B8E0  4E 80 00 20 */	blr 
