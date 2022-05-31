lbl_804FFD9C:
/* 804FFD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFDA0  7C 08 02 A6 */	mflr r0
/* 804FFDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFDA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FFDAC  7C 9F 23 78 */	mr r31, r4
/* 804FFDB0  93 C1 00 08 */	stw r30, 8(r1)
/* 804FFDB4  7C 7E 1B 78 */	mr r30, r3
/* 804FFDB8  4B FD 77 25 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FFDBC  2C 03 00 00 */	cmpwi r3, 0
/* 804FFDC0  40 82 00 10 */	bne lbl_804FFDD0
/* 804FFDC4  7F C3 F3 78 */	mr r3, r30
/* 804FFDC8  7F E4 FB 78 */	mr r4, r31
/* 804FFDCC  4B FF FF 25 */	bl Player_actor_SetEffect_Tired
lbl_804FFDD0:
/* 804FFDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFDD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FFDD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FFDDC  7C 08 03 A6 */	mtlr r0
/* 804FFDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFDE4  4E 80 00 20 */	blr 
