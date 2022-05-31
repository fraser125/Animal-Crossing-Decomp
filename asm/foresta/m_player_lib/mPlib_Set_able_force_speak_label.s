lbl_803D9FC4:
/* 803D9FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9FC8  7C 08 02 A6 */	mflr r0
/* 803D9FCC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D9FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D9FD8  7C 7F 1B 78 */	mr r31, r3
/* 803D9FDC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D9FE0  3C 63 00 03 */	addis r3, r3, 3
/* 803D9FE4  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803D9FE8  7C 00 07 75 */	extsb. r0, r0
/* 803D9FEC  41 82 00 18 */	beq lbl_803DA004
/* 803D9FF0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803D9FF4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803D9FF8  80 63 00 00 */	lwz r3, 0(r3)
/* 803D9FFC  4B FF F6 45 */	bl get_player_actor_withoutCheck
/* 803DA000  93 E3 12 20 */	stw r31, 0x1220(r3)
lbl_803DA004:
/* 803DA004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA00C  7C 08 03 A6 */	mtlr r0
/* 803DA010  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA014  4E 80 00 20 */	blr 
