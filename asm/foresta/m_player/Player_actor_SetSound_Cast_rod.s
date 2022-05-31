lbl_804F52AC:
/* 804F52AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F52B0  7C 08 02 A6 */	mflr r0
/* 804F52B4  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804F52B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F52BC  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804F52C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F52C4  7C 7F 1B 78 */	mr r31, r3
/* 804F52C8  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F52CC  4B FE 23 35 */	bl Player_actor_Check_AnimationFrame
/* 804F52D0  2C 03 00 00 */	cmpwi r3, 0
/* 804F52D4  41 82 00 0C */	beq lbl_804F52E0
/* 804F52D8  7F E3 FB 78 */	mr r3, r31
/* 804F52DC  4B FE A4 11 */	bl Player_actor_sound_ROD_STROKE
lbl_804F52E0:
/* 804F52E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F52E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F52E8  7C 08 03 A6 */	mtlr r0
/* 804F52EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F52F0  4E 80 00 20 */	blr 
