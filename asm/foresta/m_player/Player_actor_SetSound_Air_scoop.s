lbl_804F94B4:
/* 804F94B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F94B8  7C 08 02 A6 */	mflr r0
/* 804F94BC  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 804F94C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F94C4  C0 24 80 E0 */	lfs f1, lit_6693@l(r4)  /* 0x806480E0@l */
/* 804F94C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F94CC  7C 7F 1B 78 */	mr r31, r3
/* 804F94D0  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F94D4  4B FD E1 2D */	bl Player_actor_Check_AnimationFrame
/* 804F94D8  2C 03 00 00 */	cmpwi r3, 0
/* 804F94DC  41 82 00 0C */	beq lbl_804F94E8
/* 804F94E0  7F E3 FB 78 */	mr r3, r31
/* 804F94E4  4B FE 65 E1 */	bl Player_actor_sound_karaburi
lbl_804F94E8:
/* 804F94E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F94EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F94F0  7C 08 03 A6 */	mtlr r0
/* 804F94F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F94F8  4E 80 00 20 */	blr 
