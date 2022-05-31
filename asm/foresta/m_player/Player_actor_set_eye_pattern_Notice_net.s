lbl_804F4328:
/* 804F4328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F432C  7C 08 02 A6 */	mflr r0
/* 804F4330  2C 04 00 00 */	cmpwi r4, 0
/* 804F4334  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4338  41 82 00 0C */	beq lbl_804F4344
/* 804F433C  4B FE 10 DD */	bl Player_actor_set_eye_pattern_normal
/* 804F4340  48 00 00 1C */	b lbl_804F435C
lbl_804F4344:
/* 804F4344  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804F4348  2C 00 00 81 */	cmpwi r0, 0x81
/* 804F434C  40 82 00 0C */	bne lbl_804F4358
/* 804F4350  4B FE 11 F5 */	bl Player_actor_set_tex_anime_pattern
/* 804F4354  48 00 00 08 */	b lbl_804F435C
lbl_804F4358:
/* 804F4358  4B FE 10 C1 */	bl Player_actor_set_eye_pattern_normal
lbl_804F435C:
/* 804F435C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4360  7C 08 03 A6 */	mtlr r0
/* 804F4364  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4368  4E 80 00 20 */	blr 
