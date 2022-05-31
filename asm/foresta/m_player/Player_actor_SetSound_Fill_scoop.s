lbl_804F8114:
/* 804F8114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8118  7C 08 02 A6 */	mflr r0
/* 804F811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F8124  7C 7F 1B 78 */	mr r31, r3
/* 804F8128  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 804F812C  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 804F8130  38 83 6A 1C */	addi r4, r3, lit_1077@l /* 0x80646A1C@l */
/* 804F8134  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F8138  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F813C  2C 00 00 59 */	cmpwi r0, 0x59
/* 804F8140  40 82 00 10 */	bne lbl_804F8150
/* 804F8144  3C 80 80 65 */	lis r4, lit_8275@ha /* 0x8064843C@ha */
/* 804F8148  C0 04 84 3C */	lfs f0, lit_8275@l(r4)  /* 0x8064843C@l */
/* 804F814C  48 00 00 0C */	b lbl_804F8158
lbl_804F8150:
/* 804F8150  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F8154  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
lbl_804F8158:
/* 804F8158  3C 80 80 65 */	lis r4, lit_8275@ha /* 0x8064843C@ha */
/* 804F815C  EC 21 00 2A */	fadds f1, f1, f0
/* 804F8160  C0 04 84 3C */	lfs f0, lit_8275@l(r4)  /* 0x8064843C@l */
/* 804F8164  EC 21 00 28 */	fsubs f1, f1, f0
/* 804F8168  4B FD F4 99 */	bl Player_actor_Check_AnimationFrame
/* 804F816C  2C 03 00 00 */	cmpwi r3, 0
/* 804F8170  41 82 00 10 */	beq lbl_804F8180
/* 804F8174  7F E3 FB 78 */	mr r3, r31
/* 804F8178  4B FE 76 05 */	bl Player_actor_sound_scoop_umeru
/* 804F817C  4B FD CC 45 */	bl Player_actor_set_viblation_Fill_scoop
lbl_804F8180:
/* 804F8180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F8188  7C 08 03 A6 */	mtlr r0
/* 804F818C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8190  4E 80 00 20 */	blr 
