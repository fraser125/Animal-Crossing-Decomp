lbl_804EF7D8:
/* 804EF7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF7DC  7C 08 02 A6 */	mflr r0
/* 804EF7E0  3C 80 80 65 */	lis r4, lit_8209@ha /* 0x80648438@ha */
/* 804EF7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF7E8  C0 24 84 38 */	lfs f1, lit_8209@l(r4)  /* 0x80648438@l */
/* 804EF7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF7F0  7C 7F 1B 78 */	mr r31, r3
/* 804EF7F4  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EF7F8  4B FE 7E 09 */	bl Player_actor_Check_AnimationFrame
/* 804EF7FC  2C 03 00 00 */	cmpwi r3, 0
/* 804EF800  41 82 00 0C */	beq lbl_804EF80C
/* 804EF804  7F E3 FB 78 */	mr r3, r31
/* 804EF808  4B FE FE 31 */	bl Player_actor_sound_LANDING
lbl_804EF80C:
/* 804EF80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF814  7C 08 03 A6 */	mtlr r0
/* 804EF818  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF81C  4E 80 00 20 */	blr 
