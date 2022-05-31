lbl_80508268:
/* 80508268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050826C  7C 08 02 A6 */	mflr r0
/* 80508270  3C A0 80 64 */	lis r5, lit_4467@ha /* 0x80647B18@ha */
/* 80508274  3C 80 80 64 */	lis r4, lit_4068@ha /* 0x80647A90@ha */
/* 80508278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050827C  C0 25 7B 18 */	lfs f1, lit_4467@l(r5)  /* 0x80647B18@l */
/* 80508280  C0 44 7A 90 */	lfs f2, lit_4068@l(r4)  /* 0x80647A90@l */
/* 80508284  4B FC F9 29 */	bl Player_actor_AppearShadow_fromAnimationFrame
/* 80508288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050828C  7C 08 03 A6 */	mtlr r0
/* 80508290  38 21 00 10 */	addi r1, r1, 0x10
/* 80508294  4E 80 00 20 */	blr 
