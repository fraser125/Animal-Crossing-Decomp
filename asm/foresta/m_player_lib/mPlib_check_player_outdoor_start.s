lbl_803DB820:
/* 803DB820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB824  7C 08 02 A6 */	mflr r0
/* 803DB828  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB830  7C 7F 1B 78 */	mr r31, r3
/* 803DB834  4B FF DE 3D */	bl mPlib_get_player_actor_main_index
/* 803DB838  2C 03 00 11 */	cmpwi r3, 0x11
/* 803DB83C  40 82 00 20 */	bne lbl_803DB85C
/* 803DB840  7F E3 FB 78 */	mr r3, r31
/* 803DB844  4B FF DD FD */	bl get_player_actor_withoutCheck
/* 803DB848  80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 803DB84C  2C 00 00 00 */	cmpwi r0, 0
/* 803DB850  41 82 00 0C */	beq lbl_803DB85C
/* 803DB854  38 60 00 01 */	li r3, 1
/* 803DB858  48 00 00 08 */	b lbl_803DB860
lbl_803DB85C:
/* 803DB85C  38 60 00 00 */	li r3, 0
lbl_803DB860:
/* 803DB860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB868  7C 08 03 A6 */	mtlr r0
/* 803DB86C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB870  4E 80 00 20 */	blr 
