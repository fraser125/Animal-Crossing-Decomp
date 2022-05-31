lbl_80507428:
/* 80507428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050742C  7C 08 02 A6 */	mflr r0
/* 80507430  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 80507434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507438  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 8050743C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507440  93 C1 00 08 */	stw r30, 8(r1)
/* 80507444  7C 7E 1B 78 */	mr r30, r3
/* 80507448  3B FE 01 74 */	addi r31, r30, 0x174
/* 8050744C  7F E3 FB 78 */	mr r3, r31
/* 80507450  4B FD 01 B1 */	bl Player_actor_Check_AnimationFrame
/* 80507454  2C 03 00 00 */	cmpwi r3, 0
/* 80507458  41 82 00 10 */	beq lbl_80507468
/* 8050745C  7F C3 F3 78 */	mr r3, r30
/* 80507460  4B FD 81 B5 */	bl Player_actor_sound_JUMP
/* 80507464  48 00 00 28 */	b lbl_8050748C
lbl_80507468:
/* 80507468  3C 80 80 65 */	lis r4, lit_8889@ha /* 0x806484B4@ha */
/* 8050746C  7F E3 FB 78 */	mr r3, r31
/* 80507470  C0 24 84 B4 */	lfs f1, lit_8889@l(r4)  /* 0x806484B4@l */
/* 80507474  4B FD 01 8D */	bl Player_actor_Check_AnimationFrame
/* 80507478  2C 03 00 00 */	cmpwi r3, 0
/* 8050747C  41 82 00 10 */	beq lbl_8050748C
/* 80507480  7F C3 F3 78 */	mr r3, r30
/* 80507484  38 80 FF FF */	li r4, -1
/* 80507488  4B FD 80 DD */	bl Player_actor_sound_SIT
lbl_8050748C:
/* 8050748C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507494  83 C1 00 08 */	lwz r30, 8(r1)
/* 80507498  7C 08 03 A6 */	mtlr r0
/* 8050749C  38 21 00 10 */	addi r1, r1, 0x10
/* 805074A0  4E 80 00 20 */	blr 
