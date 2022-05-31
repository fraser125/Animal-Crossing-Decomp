lbl_804E1CE0:
/* 804E1CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1CE4  7C 08 02 A6 */	mflr r0
/* 804E1CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1CF0  7C 7F 1B 78 */	mr r31, r3
/* 804E1CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 804E1CF8  7C 9E 23 78 */	mr r30, r4
/* 804E1CFC  4B F2 A4 D9 */	bl Matrix_push
/* 804E1D00  38 60 00 00 */	li r3, 0
/* 804E1D04  38 80 0B B8 */	li r4, 0xbb8
/* 804E1D08  38 A0 00 00 */	li r5, 0
/* 804E1D0C  38 C0 00 01 */	li r6, 1
/* 804E1D10  4B F2 AC 85 */	bl Matrix_rotateXYZ
/* 804E1D14  3C 80 80 65 */	lis r4, lit_6297@ha /* 0x80648060@ha */
/* 804E1D18  38 7F 11 30 */	addi r3, r31, 0x1130
/* 804E1D1C  C0 24 80 60 */	lfs f1, lit_6297@l(r4)  /* 0x80648060@l */
/* 804E1D20  4B F2 B8 11 */	bl Matrix_Position_VecZ
/* 804E1D24  3C 80 80 65 */	lis r4, lit_6298@ha /* 0x80648064@ha */
/* 804E1D28  38 7F 11 3C */	addi r3, r31, 0x113c
/* 804E1D2C  C0 24 80 64 */	lfs f1, lit_6298@l(r4)  /* 0x80648064@l */
/* 804E1D30  4B F2 B8 01 */	bl Matrix_Position_VecZ
/* 804E1D34  3C 80 80 65 */	lis r4, lit_6299@ha /* 0x80648068@ha */
/* 804E1D38  38 7F 0E 38 */	addi r3, r31, 0xe38
/* 804E1D3C  C0 24 80 68 */	lfs f1, lit_6299@l(r4)  /* 0x80648068@l */
/* 804E1D40  4B F2 B7 F1 */	bl Matrix_Position_VecZ
/* 804E1D44  3C 80 80 65 */	lis r4, lit_6299@ha /* 0x80648068@ha */
/* 804E1D48  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804E1D4C  C0 24 80 68 */	lfs f1, lit_6299@l(r4)  /* 0x80648068@l */
/* 804E1D50  4B F2 B7 E1 */	bl Matrix_Position_VecZ
/* 804E1D54  3C 80 80 65 */	lis r4, lit_6299@ha /* 0x80648068@ha */
/* 804E1D58  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 804E1D5C  C0 24 80 68 */	lfs f1, lit_6299@l(r4)  /* 0x80648068@l */
/* 804E1D60  4B F2 B7 D1 */	bl Matrix_Position_VecZ
/* 804E1D64  4B F2 A4 B1 */	bl Matrix_pull
/* 804E1D68  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 804E1D6C  3C 60 80 4E */	lis r3, Player_actor_Item_draw_net_After@ha /* 0x804E1C6C@ha */
/* 804E1D70  38 E3 1C 6C */	addi r7, r3, Player_actor_Item_draw_net_After@l /* 0x804E1C6C@l */
/* 804E1D74  7F E8 FB 78 */	mr r8, r31
/* 804E1D78  54 04 45 EE */	rlwinm r4, r0, 8, 0x17, 0x17
/* 804E1D7C  7F C3 F3 78 */	mr r3, r30
/* 804E1D80  38 A4 0A E8 */	addi r5, r4, 0xae8
/* 804E1D84  38 C0 00 00 */	li r6, 0
/* 804E1D88  38 9F 0A 18 */	addi r4, r31, 0xa18
/* 804E1D8C  7C BF 2A 14 */	add r5, r31, r5
/* 804E1D90  4B E8 F9 A9 */	bl cKF_Si3_draw_R_SV
/* 804E1D94  38 00 00 00 */	li r0, 0
/* 804E1D98  90 1F 0F 4C */	stw r0, 0xf4c(r31)
/* 804E1D9C  90 1F 11 70 */	stw r0, 0x1170(r31)
/* 804E1DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1DA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E1DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1DAC  7C 08 03 A6 */	mtlr r0
/* 804E1DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1DB4  4E 80 00 20 */	blr 
