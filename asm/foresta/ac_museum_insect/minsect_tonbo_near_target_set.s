lbl_8045ECA0:
/* 8045ECA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045ECA4  7C 08 02 A6 */	mflr r0
/* 8045ECA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045ECAC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8045ECB0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8045ECB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8045ECB8  4B C3 C2 15 */	bl func_8009AECC
/* 8045ECBC  7C 9C 23 78 */	mr r28, r4
/* 8045ECC0  7C 7B 1B 78 */	mr r27, r3
/* 8045ECC4  7F 83 E3 78 */	mr r3, r28
/* 8045ECC8  4B F7 A9 79 */	bl get_player_actor_withoutCheck
/* 8045ECCC  3C 80 80 64 */	lis r4, lit_949@ha /* 0x806446CC@ha */
/* 8045ECD0  7C 7E 1B 78 */	mr r30, r3
/* 8045ECD4  C3 E4 46 CC */	lfs f31, lit_949@l(r4)  /* 0x806446CC@l */
/* 8045ECD8  3B A0 00 00 */	li r29, 0
/* 8045ECDC  3B E0 00 00 */	li r31, 0
lbl_8045ECE0:
/* 8045ECE0  2C 1D 00 06 */	cmpwi r29, 6
/* 8045ECE4  41 80 00 14 */	blt lbl_8045ECF8
/* 8045ECE8  38 7B 00 1C */	addi r3, r27, 0x1c
/* 8045ECEC  38 9E 00 28 */	addi r4, r30, 0x28
/* 8045ECF0  4B F5 C2 E5 */	bl search_position_distance
/* 8045ECF4  48 00 00 18 */	b lbl_8045ED0C
lbl_8045ECF8:
/* 8045ECF8  3C 80 80 68 */	lis r4, tonbo_rock_pos@ha /* 0x80686AAC@ha */
/* 8045ECFC  38 7B 00 1C */	addi r3, r27, 0x1c
/* 8045ED00  38 04 6A AC */	addi r0, r4, tonbo_rock_pos@l /* 0x80686AAC@l */
/* 8045ED04  7C 80 FA 14 */	add r4, r0, r31
/* 8045ED08  4B F5 C2 CD */	bl search_position_distance
lbl_8045ED0C:
/* 8045ED0C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8045ED10  40 80 00 34 */	bge lbl_8045ED44
/* 8045ED14  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045ED18  A8 1B 00 74 */	lha r0, 0x74(r27)
/* 8045ED1C  38 83 DF D0 */	addi r4, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045ED20  38 60 00 01 */	li r3, 1
/* 8045ED24  80 84 00 00 */	lwz r4, 0(r4)
/* 8045ED28  7C 60 00 30 */	slw r0, r3, r0
/* 8045ED2C  A8 64 2F A0 */	lha r3, 0x2fa0(r4)
/* 8045ED30  7C 60 00 39 */	and. r0, r3, r0
/* 8045ED34  40 82 00 10 */	bne lbl_8045ED44
/* 8045ED38  7F 63 DB 78 */	mr r3, r27
/* 8045ED3C  7F 84 E3 78 */	mr r4, r28
/* 8045ED40  48 00 0D BD */	bl minsect_tonbo_aim_rock_process_init
lbl_8045ED44:
/* 8045ED44  3B BD 00 01 */	addi r29, r29, 1
/* 8045ED48  3B FF 00 0C */	addi r31, r31, 0xc
/* 8045ED4C  2C 1D 00 06 */	cmpwi r29, 6
/* 8045ED50  40 81 FF 90 */	ble lbl_8045ECE0
/* 8045ED54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8045ED58  39 61 00 20 */	addi r11, r1, 0x20
/* 8045ED5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8045ED60  4B C3 C1 B9 */	bl func_8009AF18
/* 8045ED64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045ED68  7C 08 03 A6 */	mtlr r0
/* 8045ED6C  38 21 00 30 */	addi r1, r1, 0x30
/* 8045ED70  4E 80 00 20 */	blr 
