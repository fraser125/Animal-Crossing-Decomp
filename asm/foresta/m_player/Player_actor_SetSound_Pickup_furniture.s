lbl_804EE7B0:
/* 804EE7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE7B4  7C 08 02 A6 */	mflr r0
/* 804EE7B8  3C 80 80 64 */	lis r4, lit_1375@ha /* 0x80646A30@ha */
/* 804EE7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE7C0  C0 24 6A 30 */	lfs f1, lit_1375@l(r4)  /* 0x80646A30@l */
/* 804EE7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE7C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE7CC  7C 7E 1B 78 */	mr r30, r3
/* 804EE7D0  3B FE 01 74 */	addi r31, r30, 0x174
/* 804EE7D4  7F E3 FB 78 */	mr r3, r31
/* 804EE7D8  4B FE 8E 29 */	bl Player_actor_Check_AnimationFrame
/* 804EE7DC  2C 03 00 00 */	cmpwi r3, 0
/* 804EE7E0  41 82 00 0C */	beq lbl_804EE7EC
/* 804EE7E4  7F C3 F3 78 */	mr r3, r30
/* 804EE7E8  4B FF 0E 75 */	bl Player_actor_sound_ITEM_GET
lbl_804EE7EC:
/* 804EE7EC  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804EE7F0  7F E3 FB 78 */	mr r3, r31
/* 804EE7F4  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804EE7F8  4B FE 8E 09 */	bl Player_actor_Check_AnimationFrame
/* 804EE7FC  2C 03 00 00 */	cmpwi r3, 0
/* 804EE800  41 82 00 0C */	beq lbl_804EE80C
/* 804EE804  7F C3 F3 78 */	mr r3, r30
/* 804EE808  4B FF 0C 7D */	bl Player_actor_sound_GASAGOSO
lbl_804EE80C:
/* 804EE80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE814  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE818  7C 08 03 A6 */	mtlr r0
/* 804EE81C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE820  4E 80 00 20 */	blr 
