lbl_80504048:
/* 80504048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050404C  7C 08 02 A6 */	mflr r0
/* 80504050  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 80504054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504058  C0 24 80 E0 */	lfs f1, lit_6693@l(r4)  /* 0x806480E0@l */
/* 8050405C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504060  93 C1 00 08 */	stw r30, 8(r1)
/* 80504064  7C 7E 1B 78 */	mr r30, r3
/* 80504068  3B FE 01 74 */	addi r31, r30, 0x174
/* 8050406C  7F E3 FB 78 */	mr r3, r31
/* 80504070  4B FD 35 91 */	bl Player_actor_Check_AnimationFrame
/* 80504074  2C 03 00 00 */	cmpwi r3, 0
/* 80504078  40 82 00 1C */	bne lbl_80504094
/* 8050407C  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 80504080  7F E3 FB 78 */	mr r3, r31
/* 80504084  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 80504088  4B FD 35 79 */	bl Player_actor_Check_AnimationFrame
/* 8050408C  2C 03 00 00 */	cmpwi r3, 0
/* 80504090  41 82 00 0C */	beq lbl_8050409C
lbl_80504094:
/* 80504094  7F C3 F3 78 */	mr r3, r30
/* 80504098  4B FD B8 31 */	bl Player_actor_sound_knock
lbl_8050409C:
/* 8050409C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805040A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805040A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805040A8  7C 08 03 A6 */	mtlr r0
/* 805040AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805040B0  4E 80 00 20 */	blr 
