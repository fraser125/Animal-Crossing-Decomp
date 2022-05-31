lbl_80503A60:
/* 80503A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503A64  7C 08 02 A6 */	mflr r0
/* 80503A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503A70  7C 7F 1B 78 */	mr r31, r3
/* 80503A74  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 80503A78  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80503A7C  40 82 00 24 */	bne lbl_80503AA0
/* 80503A80  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 80503A84  38 7F 01 74 */	addi r3, r31, 0x174
/* 80503A88  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 80503A8C  4B FD 3B 75 */	bl Player_actor_Check_AnimationFrame
/* 80503A90  2C 03 00 00 */	cmpwi r3, 0
/* 80503A94  41 82 00 0C */	beq lbl_80503AA0
/* 80503A98  38 00 00 01 */	li r0, 1
/* 80503A9C  90 1F 11 0C */	stw r0, 0x110c(r31)
lbl_80503AA0:
/* 80503AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503AA8  7C 08 03 A6 */	mtlr r0
/* 80503AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80503AB0  4E 80 00 20 */	blr 
