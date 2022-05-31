lbl_80501BF8:
/* 80501BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501BFC  7C 08 02 A6 */	mflr r0
/* 80501C00  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 80501C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501C08  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 80501C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80501C10  7C 7F 1B 78 */	mr r31, r3
/* 80501C14  38 7F 01 74 */	addi r3, r31, 0x174
/* 80501C18  4B FD 59 E9 */	bl Player_actor_Check_AnimationFrame
/* 80501C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80501C20  41 82 00 0C */	beq lbl_80501C2C
/* 80501C24  38 00 00 1F */	li r0, 0x1f
/* 80501C28  90 1F 11 0C */	stw r0, 0x110c(r31)
lbl_80501C2C:
/* 80501C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501C34  7C 08 03 A6 */	mtlr r0
/* 80501C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80501C3C  4E 80 00 20 */	blr 
