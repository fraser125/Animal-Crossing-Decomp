lbl_804601E0:
/* 804601E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804601E4  7C 08 02 A6 */	mflr r0
/* 804601E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804601EC  38 A1 00 08 */	addi r5, r1, 8
/* 804601F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804601F4  7C 7F 1B 78 */	mr r31, r3
/* 804601F8  4B FF EB 7D */	bl minsect_tonbo_rock_target_set
/* 804601FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80460200  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80460204  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80460208  38 81 00 08 */	addi r4, r1, 8
/* 8046020C  90 BF 00 44 */	stw r5, 0x44(r31)
/* 80460210  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80460214  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80460218  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8046021C  4B F5 AF 15 */	bl search_position_angleY
/* 80460220  3C A0 80 64 */	lis r5, lit_507@ha /* 0x806445EC@ha */
/* 80460224  3C 80 80 46 */	lis r4, minsect_tonbo_rock_process@ha /* 0x80460250@ha */
/* 80460228  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046022C  38 04 02 50 */	addi r0, r4, minsect_tonbo_rock_process@l /* 0x80460250@l */
/* 80460230  C0 05 45 EC */	lfs f0, lit_507@l(r5)  /* 0x806445EC@l */
/* 80460234  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80460238  90 1F 00 04 */	stw r0, 4(r31)
/* 8046023C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80460240  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80460244  7C 08 03 A6 */	mtlr r0
/* 80460248  38 21 00 20 */	addi r1, r1, 0x20
/* 8046024C  4E 80 00 20 */	blr 
