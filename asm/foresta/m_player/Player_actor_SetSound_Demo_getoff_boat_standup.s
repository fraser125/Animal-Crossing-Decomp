lbl_80507CFC:
/* 80507CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507D00  7C 08 02 A6 */	mflr r0
/* 80507D04  3C 80 80 64 */	lis r4, lit_5247@ha /* 0x80647CE4@ha */
/* 80507D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507D0C  C0 24 7C E4 */	lfs f1, lit_5247@l(r4)  /* 0x80647CE4@l */
/* 80507D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507D14  93 C1 00 08 */	stw r30, 8(r1)
/* 80507D18  7C 7E 1B 78 */	mr r30, r3
/* 80507D1C  3B FE 01 74 */	addi r31, r30, 0x174
/* 80507D20  7F E3 FB 78 */	mr r3, r31
/* 80507D24  4B FC F8 DD */	bl Player_actor_Check_AnimationFrame
/* 80507D28  2C 03 00 00 */	cmpwi r3, 0
/* 80507D2C  41 82 00 14 */	beq lbl_80507D40
/* 80507D30  7F C3 F3 78 */	mr r3, r30
/* 80507D34  38 80 FF FF */	li r4, -1
/* 80507D38  4B FD 78 85 */	bl Player_actor_sound_STANDUP
/* 80507D3C  48 00 00 24 */	b lbl_80507D60
lbl_80507D40:
/* 80507D40  3C 80 80 65 */	lis r4, lit_9522@ha /* 0x806484D0@ha */
/* 80507D44  7F E3 FB 78 */	mr r3, r31
/* 80507D48  C0 24 84 D0 */	lfs f1, lit_9522@l(r4)  /* 0x806484D0@l */
/* 80507D4C  4B FC F8 B5 */	bl Player_actor_Check_AnimationFrame
/* 80507D50  2C 03 00 00 */	cmpwi r3, 0
/* 80507D54  41 82 00 0C */	beq lbl_80507D60
/* 80507D58  7F C3 F3 78 */	mr r3, r30
/* 80507D5C  4B FD 78 DD */	bl Player_actor_sound_LANDING
lbl_80507D60:
/* 80507D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507D68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80507D6C  7C 08 03 A6 */	mtlr r0
/* 80507D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80507D74  4E 80 00 20 */	blr 
