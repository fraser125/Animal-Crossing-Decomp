lbl_8057D60C:
/* 8057D60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D610  7C 08 02 A6 */	mflr r0
/* 8057D614  3C 80 80 6C */	lis r4, dt_tbl_788@ha /* 0x806C075C@ha */
/* 8057D618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D61C  38 04 07 5C */	addi r0, r4, dt_tbl_788@l /* 0x806C075C@l */
/* 8057D620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D624  7C 7F 1B 78 */	mr r31, r3
/* 8057D628  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D62C  80 63 09 A4 */	lwz r3, 0x9a4(r3)
/* 8057D630  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8057D634  7F C0 1A 14 */	add r30, r0, r3
/* 8057D638  80 7E 00 00 */	lwz r3, 0(r30)
/* 8057D63C  4B E1 AE D9 */	bl mDemo_Set_msg_num
/* 8057D640  88 7E 00 08 */	lbz r3, 8(r30)
/* 8057D644  4B E1 B2 05 */	bl mDemo_Set_talk_turn
/* 8057D648  88 7E 00 09 */	lbz r3, 9(r30)
/* 8057D64C  4B E1 B2 D5 */	bl mDemo_Set_camera
/* 8057D650  80 9E 00 04 */	lwz r4, 4(r30)
/* 8057D654  7F E3 FB 78 */	mr r3, r31
/* 8057D658  4B FF FF 55 */	bl aSHM_change_talk_proc
/* 8057D65C  80 1F 09 A4 */	lwz r0, 0x9a4(r31)
/* 8057D660  2C 00 00 00 */	cmpwi r0, 0
/* 8057D664  41 82 00 24 */	beq lbl_8057D688
/* 8057D668  2C 00 00 01 */	cmpwi r0, 1
/* 8057D66C  41 82 00 1C */	beq lbl_8057D688
/* 8057D670  A8 7F 09 78 */	lha r3, 0x978(r31)
/* 8057D674  7C 60 07 35 */	extsh. r0, r3
/* 8057D678  41 82 00 08 */	beq lbl_8057D680
/* 8057D67C  90 7F 09 C4 */	stw r3, 0x9c4(r31)
lbl_8057D680:
/* 8057D680  38 00 00 00 */	li r0, 0
/* 8057D684  B0 1F 09 78 */	sth r0, 0x978(r31)
lbl_8057D688:
/* 8057D688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D690  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D694  7C 08 03 A6 */	mtlr r0
/* 8057D698  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D69C  4E 80 00 20 */	blr 
