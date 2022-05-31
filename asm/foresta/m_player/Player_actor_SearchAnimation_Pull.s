lbl_804EACF4:
/* 804EACF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EACF8  7C 08 02 A6 */	mflr r0
/* 804EACFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EAD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EAD04  7C 9F 23 78 */	mr r31, r4
/* 804EAD08  93 C1 00 08 */	stw r30, 8(r1)
/* 804EAD0C  7C 7E 1B 78 */	mr r30, r3
/* 804EAD10  4B FE C7 CD */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EAD14  2C 03 00 00 */	cmpwi r3, 0
/* 804EAD18  40 82 00 18 */	bne lbl_804EAD30
/* 804EAD1C  7F C3 F3 78 */	mr r3, r30
/* 804EAD20  7F E4 FB 78 */	mr r4, r31
/* 804EAD24  38 A0 00 00 */	li r5, 0
/* 804EAD28  38 C0 00 00 */	li r6, 0
/* 804EAD2C  4B FF 05 C5 */	bl Player_actor_Set_FootMark_Base1
lbl_804EAD30:
/* 804EAD30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EAD34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EAD38  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EAD3C  7C 08 03 A6 */	mtlr r0
/* 804EAD40  38 21 00 10 */	addi r1, r1, 0x10
/* 804EAD44  4E 80 00 20 */	blr 
