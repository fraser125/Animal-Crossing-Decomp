lbl_804F8C10:
/* 804F8C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8C14  7C 08 02 A6 */	mflr r0
/* 804F8C18  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 804F8C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8C20  C0 24 80 E0 */	lfs f1, lit_6693@l(r4)  /* 0x806480E0@l */
/* 804F8C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F8C28  7C 7F 1B 78 */	mr r31, r3
/* 804F8C2C  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F8C30  4B FD E9 D1 */	bl Player_actor_Check_AnimationFrame
/* 804F8C34  2C 03 00 00 */	cmpwi r3, 0
/* 804F8C38  41 82 00 0C */	beq lbl_804F8C44
/* 804F8C3C  80 7F 0D 28 */	lwz r3, 0xd28(r31)
/* 804F8C40  4B FE 56 DD */	bl Player_actor_CheckAndSet_UZAI_forNpc
lbl_804F8C44:
/* 804F8C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F8C4C  7C 08 03 A6 */	mtlr r0
/* 804F8C50  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8C54  4E 80 00 20 */	blr 
