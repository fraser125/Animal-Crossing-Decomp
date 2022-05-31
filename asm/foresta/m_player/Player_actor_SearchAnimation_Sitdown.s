lbl_804EF1D4:
/* 804EF1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF1D8  7C 08 02 A6 */	mflr r0
/* 804EF1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF1E4  7C 7F 1B 78 */	mr r31, r3
/* 804EF1E8  4B FE 82 F5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EF1EC  2C 03 00 00 */	cmpwi r3, 0
/* 804EF1F0  40 82 00 0C */	bne lbl_804EF1FC
/* 804EF1F4  7F E3 FB 78 */	mr r3, r31
/* 804EF1F8  4B FF FF 91 */	bl Player_actor_SetSound_Sitdown
lbl_804EF1FC:
/* 804EF1FC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EF200  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804EF204  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804EF208  C0 44 6E 54 */	lfs f2, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804EF20C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EF210  7F E3 FB 78 */	mr r3, r31
/* 804EF214  4B FE 89 19 */	bl Player_actor_DisappearShadow_fromAnimationFrame
/* 804EF218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF21C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF220  7C 08 03 A6 */	mtlr r0
/* 804EF224  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF228  4E 80 00 20 */	blr 
