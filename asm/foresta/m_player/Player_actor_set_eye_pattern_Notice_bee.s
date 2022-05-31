lbl_80503050:
/* 80503050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503054  7C 08 02 A6 */	mflr r0
/* 80503058  2C 04 00 00 */	cmpwi r4, 0
/* 8050305C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503060  41 82 00 24 */	beq lbl_80503084
/* 80503064  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80503068  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8050306C  3C 84 00 03 */	addis r4, r4, 3
/* 80503070  88 04 85 C0 */	lbz r0, -0x7a40(r4)
/* 80503074  7C 00 07 75 */	extsb. r0, r0
/* 80503078  40 82 00 10 */	bne lbl_80503088
/* 8050307C  4B FD 23 9D */	bl Player_actor_set_eye_pattern_normal
/* 80503080  48 00 00 08 */	b lbl_80503088
lbl_80503084:
/* 80503084  4B FD 24 C1 */	bl Player_actor_set_tex_anime_pattern
lbl_80503088:
/* 80503088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050308C  7C 08 03 A6 */	mtlr r0
/* 80503090  38 21 00 10 */	addi r1, r1, 0x10
/* 80503094  4E 80 00 20 */	blr 
